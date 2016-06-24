# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# categories
sports = Category.create(name: 'Sports')
movies = Category.create(name: 'Movies')
books = Category.create(name: 'Books')

# audiences
single_audience = Audience.create(name: 'Single')
couple_audience = Audience.create(name: 'Couple')
family_audience = Audience.create(name: 'Family')
kids_audience = Audience.create(name: 'Kids')

# indoor activities
alchemist = IndoorActivity.create(name: "Alchemist",
                                  release_date: Date.today,
                                  description: "The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho first published in 1988. Originally written in Portuguese, it has been translated into at least 67 languages as of October 2009. An allegorical novel, The Alchemist follows a young Andalusian shepherd named Santiago in his journey to Egypt, after having a recurring dream of finding treasure there.")

alchemist.categories << books
alchemist.audiences << single_audience

Event.create(name: "Hackathon", description:'hackathon', audience_id: single_audience.id, category_id: sports.id, starts_at: DateTime.now, ends_at: DateTime.now + 1.day)