# rails g task crawl_events facebook events_in_nepal
namespace :crawl_events do

  def date_of_next(day)
    date  = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
  end

  desc "run all event crawlers"
  task :all => [:facebook, :events_in_nepal]

  desc "TODO"
  task facebook: :environment do
    p "fetching data from facebook"
    next_weekend =  [date_of_next("saturday"), date_of_next("sunday")]
    p next_weekend
  end

  desc "events from eventinnepal"
  task events_in_nepal: :environment do
    p "fetching data from events in nepal"

    SITE="http://www.eventsinnepal.com/this-months-events"

    page = HTTParty.get(SITE)

    parse_page = Nokogiri::HTML(page)

    events_array = []


    parse_page.css('.eventListing ul li').each do |event|
      child_link = event.children[1].attributes['href'].value
      full_link =  "http://www.eventsinnepal.com"+child_link

      detail_page = HTTParty.get(full_link)
      parsed_detail_page = Nokogiri::HTML(detail_page)

      event_heading = parsed_detail_page.css('.eventTitle h1').text
      begin
        event_title = event_heading.gsub(/\n/, '~').split('~')[0]
        event_time = event_heading.gsub(/\n/, '~').split('~')[1].gsub!(/\t|\n/, '')
        event_venue = event_heading.gsub(/\n/, '~').split('~')[2].gsub!(/\t|\n/, '')
      rescue
        event_title = event_title || ''
        event_time = event_time || ''
        event_venue = event_venue || ''
      end

      event_description = parsed_detail_page.css('#articleDesc').inner_text

      parse_more_info = parsed_detail_page.css('.rdContent p a')

      event_info = ''
      if(parse_more_info.children[1])
        event_info = parse_more_info.children[1].text
      end

      event_description += "\n\nTiming: " + event_time + "\n\nLocation: " + event_venue + "\n\n" + "Link: "+ event_info
      events_array << [event_title, event_description]
    end

    puts events_array


    events_array.each do |event|
        Event.create(name: event[0], description:event[1], category_id: Category.find_by_name('Nature and Animals').id)
    end
  end


  desc "Top 250 movies"
  task imdb_movies: :environment do
    puts 'fetching movies'
    SITE="http://www.imdb.com/chart/top"
    BASE = "http://www.imdb.com/"

    page = HTTParty.get(SITE)

    parse_page = Nokogiri::HTML(page)

    link_arr = []
    parse_page.css('.titleColumn a').each do |movie_node|
      link = BASE+movie_node.attributes['href'].value
      link = link.gsub(/\?.*/,'')
      link_arr << link
    end
# audiences
    single_audience = Audience.find_by_name('Single')
    couple_audience = Audience.find_by_name('Couple')
    link_arr.each do |link|
      page = HTTParty.get(link)
      parsed_page = Nokogiri::HTML(page)

      movie_rating = parsed_page.css('.ratingValue strong').text+"/10"
      movie_title = parsed_page.css('.titleBar .title_wrapper h1').text
      movie_description = parsed_page.css('.plot_summary .summary_text').text.gsub("\n","").strip
      movie_description = "IMDB Rating: " + movie_rating + "\n\n"+ movie_description + "\n\nIMDB Link:" + link

      activity = IndoorActivity.create(name: movie_title, description: movie_description, category_id: Category.find_by_name('Movies and Series').id)
      activity.audiences << [single_audience, couple_audience]
      begin
      image = parsed_page.css('.poster img').first.attributes['src'].value
      rescue
        image = image || 'https://leadof5.files.wordpress.com/2014/10/zoo.jpg'
      end

      activity.images << Image.create(source: image)
      activity.save
      puts movie_title

    end

  end

end
