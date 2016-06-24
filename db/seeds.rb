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
nature = Category.create(name: 'Nature and Animals')
sports = Category.create(name: 'Sports')
eating = Category.create(name: 'Eating and Dining')
heritage = Category.create(name: 'Religious places and cultural heritage')
kids = Category.create(name: 'Kids Entertainment')
museums = Category.create(name: 'Museums')
hiking = Category.create(name: 'Hiking')
theatre = Category.create(name: 'Theatre/Dramas')
events = Category.create(name: 'Events  and Concerts')
cinema = Category.create(name: 'Cinema')
karaoke = Category.create(name: 'Karaoke')
shopping = Category.create(name: 'Shopping')


zoo = Location.create(name: "Central Zoo", description:'The Central Zoo is a 6-hectare zoo in Jawalakhel, Nepal. It is home to some 870 animals in 109 species, and is operated by the National Trust for Nature Conservation. Although it was originally a private zoo, it was opened to the public in 1956.', category_id: nature.id, latitude: 27.673274, longitude:85.3107136, opens_at: '10 am', closes_at: '4 pm').audiences << [kids_audience, single_audience, couple_audience]
zoo.images.build(name:"some name")
zoo.remote_source_url = "https://leadof5.files.wordpress.com/2014/10/zoo.jpg"
zoo.save

Location.create(name: "Godawari Botanical Garden", description:'The National Botanical Garden is located in the base of Mount Phulchoki (2715m.) at Godawari (1515m.) at the south east corner of Kathmandu valley. The area of the Garden is 82 hectare. It is surrounded by evergreen natural forests. The temperature ranges between 20°C and 30°C during summer and -5°C to 20°C during winter. This Garden was graciously inaugurated by His Majesty the King Late Mahendra Bir Bikram Shah Dev on the 20th October 1962. Ever since its establishment much of its activities have been centered in enriching the garden with indigenous plants as to integrate its collection with scientific investigation, conservation, education and demonstration.', category_id: nature.id, latitude: 27.5969324, longitude:85.3781706, opens_at: '10 am', closes_at: '5 pm').audiences << [kids_audience, single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Sundarijal", description:"Sundarijal is located 15 kilometres (9 mi) northeast of Nepal's capital, Kathmandu. It is west of Gagalphedi, east of Nayapati and Baluwa, and north of Aalapot. The VDC touches Nuwakot and Sindhulpalchok Districts to the north. Sundarijal covers an area of 5.18 square kilometres (2 sq mi). The Bagmati River flows through the VDC, where it is joined by the Shyalmati and Nagmati Rivers. Largely hilly in its terrain with few flat areas, the VDC is covered by forests. Shivapuri National Park covers large amounts of the Sundarijal.", category_id: nature.id, latitude: 27.7589244, longitude:85.420379).audiences << [ single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Tribhuwan Park", description:'Tribhuwan park is picnic spot. Which is situated at thankot of kathmandu . it is about 15 minutes drive towards west from kalanki . this park lies by the highway which makes easy access to those who want to enjoy their free time visiting the park and going there for picnic.', category_id: nature.id, latitude: 27.6899621, longitude:85.2186201, opens_at: '10 am', closes_at: '5 pm').audiences << [kids_audience, single_audience, couple_audience, family_audience, group_audience]


Location.create(name: "Balaju park", description:'5 km north-west of Kathmandu is the Balaju Gardens, a quiet park ideal for relaxation. The park has a line of twenty-two stone water spouts built in the 18th Century, each of which has an ornately carved crocodile head. During an annual festival, people come here to bathe. The garden has a swimming pool open to the public and the ponds beside the flower gardens are teeming with fishes.  A replica of the stone image of Budanilkantha was built here specifically for the royal family as they were barred from visiting the real one.', category_id: nature.id, latitude: 27.7338465, longitude:85.3011804, opens_at: '10 am', closes_at: '5 pm').audiences << [kids_audience, single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Ratna Park", description:'Ratna Park is a park and surrounding district in central Kathmandu, Nepal. It is named after Queen Ratna, the wife of King Mahendra. It was built for the children and is named after Ratna, the second queen of King Mahendra.', category_id: nature.id, latitude: 27.7122127, longitude:85.304777, opens_at: '10 am', closes_at: '5 pm').audiences << [kids_audience, single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Manjushree Park", description:'Looking over Chobar Gorge, Manjushree Park is popular with romancing teenagers, but is of more interest to foreigners for its caves.', category_id: nature.id, latitude: 27.6591159, longitude:85.2929217, opens_at: '10 am', closes_at: '5 pm').audiences << [kids_audience, single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Taudaha", description:"Taudaha Lake is a small lake in the outskirts of Kathmandu, in Nepal. The name comes from a combination of Newari words 'Ta', meaning snake and 'Daha', which means lake", category_id: nature.id, latitude: 27.6486993, longitude:85.2732452, opens_at: '10 am', closes_at: '5 pm').audiences << [single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Nag Daha", description:'Nagdaha is a lake in the Dhapakhel Village Development Committee of Lalitpur District, in the Kathmandu Valley, Nepal. Like many other water bodies and physical features of Kathmandu, the Nagdaha is also steeped in legends', category_id: nature.id, latitude: 27.6245183, longitude:85.3310036).audiences << [single_audience, couple_audience, family_audience, group_audience]

Location.create(name: "Garden of Dreams", description:'The Garden of Dreams, also, the Garden of Six Seasons, is a neo-classical garden in Kaiser Mahal Kathmandu, Nepal, built in 1920.', category_id: nature.id, latitude: 27.714215, longitude:85.3143379, opens_at: '9 am', closes_at: '10 pm').audiences << [couple_audience, group_audience]






#Event.create(name: "Hackathon", description:'hackathon', category_id: sports.id,latitude: 27.7122127, longitude:85.304777, starts_at: DateTime.now, ends_at: DateTime.now + 1.day)



# outdoor activities



# indoor activities
alchemist = IndoorActivity.create(name: "Alchemist",
                                  release_date: Date.today,
                                  description: "The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho first published in 1988. Originally written in Portuguese, it has been translated into at least 67 languages as of October 2009. An allegorical novel, The Alchemist follows a young Andalusian shepherd named Santiago in his journey to Egypt, after having a recurring dream of finding treasure there.")

alchemist.categories << books
alchemist.audiences << single_audience


