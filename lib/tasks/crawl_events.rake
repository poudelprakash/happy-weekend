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

  desc "TODO"
  task events_in_nepal: :environment do
    p "fetching data from events in nepal"

    page = HTTParty.get(SITE)

    parse_page = Nokogiri::HTML(page)

    events_array = []


    parse_page.css('.eventListing ul li').each do |event|
      child_link = event.children[1].attributes['href'].value
      full_link =  "http://www.eventsinnepal.com"+child_link

      detail_page = HTTParty.get(full_link)
      parsed_detail_page = Nokogiri::HTML(detail_page)

      event_heading = parsed_detail_page.css('.eventTitle h1').text
      event_title = event_heading.gsub(/\n/, '~').split('~')[0]
      event_time = event_heading.gsub(/\n/, '~').split('~')[1].gsub!(/\t|\n/, '')
      event_venue = event_heading.gsub(/\n/, '~').split('~')[2].gsub!(/\t|\n/, '')
      
    end
  end

end
