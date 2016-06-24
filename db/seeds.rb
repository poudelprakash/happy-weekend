# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).



# audiences
kids_audience = Audience.create(name: 'Kids')
single_audience = Audience.create(name: 'Single')
couple_audience = Audience.create(name: 'Couple')
family_audience = Audience.create(name: 'Family')
group_audience = Audience.create(name: 'Group')



# indoor categories
video_games = Category.create(name: 'Video Games')
movies = Category.create(name: 'Movies and Series')
books = Category.create(name: 'Books')


#outdoor categories
nature_and_animals = Category.create(name: 'Nature and Animals')
sports = Category.create(name: 'Sports')
eating_and_dining = Category.create(name: 'Eating and Dining')
heritage = Category.create(name: 'Religious places and cultural heritage')
kids_entertainment = Category.create(name: 'Kids Entertainment')
museums = Category.create(name: 'Museums')
hiking = Category.create(name: 'Hiking')
theatre = Category.create(name: 'Theatre/Dramas')
events = Category.create(name: 'Events  and Concerts')
cinema = Category.create(name: 'Cinema')
karaoke = Category.create(name: 'Karaoke')
shopping = Category.create(name: 'Shopping')



# outdoor activities



# indoor activities
alchemist = IndoorActivity.create(name: "Alchemist",
                                  release_date: Date.today,
                                  description: "The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho first published in 1988. Originally written in Portuguese, it has been translated into at least 67 languages as of October 2009. An allegorical novel, The Alchemist follows a young Andalusian shepherd named Santiago in his journey to Egypt, after having a recurring dream of finding treasure there.")

alchemist.categories << books
alchemist.audiences << single_audience