# rails g task crawl_events facebook events_in_nepal
namespace :crawl_events do

  desc "run all event crawlers"
  task :all => [:facebook, :events_in_nepal]

  desc "TODO"
  task facebook: :environment do
    p "fetching data from facebook"
  end

  desc "TODO"
  task events_in_nepal: :environment do
    p "fetching data from events in nepal"
  end

end
