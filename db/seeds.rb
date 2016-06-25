# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).



# audiences
kids_audience = Audience.create(name: 'Kids')
single_audience = Audience.create(name: 'Single')
couple_audience = Audience.create(name: 'Couple')
family_audience = Audience.create(name: 'Family')
group_audience = Audience.create(name: 'Group')



# indoor categories
video_games = Category.create(name: 'Video Games', css_class: 'animal')
movies = Category.create(name: 'Movies and Series', css_class: 'sports')
books = Category.create(name: 'Books', css_class: 'kids')


#outdoor categories
nature = Category.create(name: 'Nature and Animals', css_class: 'animal')
sports = Category.create(name: 'Sports', css_class: 'sports')
eating = Category.create(name: 'Eating and Dining', css_class: 'dining')
heritage = Category.create(name: 'Cultural Heritage', css_class: 'heritage')
kids = Category.create(name: 'Kids Entertainment', css_class: 'kids')
museums = Category.create(name: 'Museums', css_class: 'museum')
hiking = Category.create(name: 'Hiking', css_class: 'hiking')
theatre = Category.create(name: 'Theatre/Dramas', css_class: 'theatre')
events = Category.create(name: 'Events  and Concerts', css_class: 'concert')
cinema = Category.create(name: 'Cinema', css_class: 'cinema')
karaoke = Category.create(name: 'Karaoke', css_class: 'karaoke')
shopping = Category.create(name: 'Shopping', css_class: 'shopping')


#Nature

zoo = Location.create(name: "Central Zoo", description:'The Central Zoo is a 6-hectare zoo in Jawalakhel, Nepal. It is home to some 870 animals in 109 species, and is operated by the National Trust for Nature Conservation. Although it was originally a private zoo, it was opened to the public in 1956.', category_id: nature.id, latitude: 27.673274, longitude:85.3107136, opens_at: '10 am', closes_at: '4 pm')
zoo.audiences << [kids_audience, single_audience, couple_audience]
# zoo_image = zoo.images.build(name:"Central Zoo")
zoo.images << Image.create(source: "https://leadof5.files.wordpress.com/2014/10/zoo.jpg")
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



#sports
Location.create(name: "Kathmandu Futsal", description:'Contact: 980-2021223', category_id: sports.id, latitude:27.7050634 , longitude:85.2824494 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Royal Futsal", description:'Contact: 1-4460436', category_id: sports.id, latitude:27.7050282 , longitude:85.2824492 , opens_at: '7 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Adarsha Futsal Arena", description:'Contact: 984-1440576', category_id: sports.id, latitude:27.705037, longitude:85.2824493 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Dhuku Futsal Hub Pvt Ltd", description:'Contact:1-4435832', category_id: sports.id, latitude:27.7050193 , longitude:85.2824492 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Futsal Arena", description:'Contact:1-4433515', category_id: sports.id, latitude:27.6920914 , longitude:85.2822775 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Hattiban Futsal", description:'Contact: 1-5251490', category_id: sports.id, latitude:27.6920826 , longitude:85.2822774 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Prismatic Futsal & Recreation Centre", description:'Contact:1-5521587', category_id: sports.id, latitude:27.6920738 , longitude:85.2822774 , opens_at: '7 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Baneshwor Futsal & Recreation Center", description:'Contact:1-4105028', category_id: sports.id, latitude:27.692065 , longitude:85.2822774 , opens_at: '6 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Maidan Futsal", description:'Contact:1-4497642', category_id: sports.id, latitude:27.6920562 , longitude:85.2822773 , opens_at: '7 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Field Futsal", description:'Contact:985-1188182', category_id: sports.id, latitude:27.7025756 , longitude:85.2631878 , opens_at: '7 am', closes_at: '').audiences << [group_audience]
Location.create(name: "Kirtipur Futsal", description:'Contact:981-8149835', category_id: sports.id, latitude:27.6920297 , longitude:85.2822772 , opens_at: '6 am', closes_at: '').audiences << [group_audience]

Location.create(name: "The Best Archery Pvt. Ltd, Nagpokhari", description:'Contact:1-2299904', category_id: sports.id, latitude:27.6920121 , longitude:85.2822771, opens_at: '8 am', closes_at: '').audiences << [single_audience, group_audience, family_audience, couple_audience]
Location.create(name: "The Best Archery Pvt. Ltd, Jhamsikhel", description:'Contact:1-2299904', category_id: sports.id, latitude:27.6920209 , longitude:85.2822771 , opens_at: '7 am', closes_at: '').audiences << [single_audience, group_audience, family_audience, couple_audience]


Location.create(name: "Go Kart Racing Nepal", description:'Contact:980-1201231', category_id: sports.id, latitude:27.678758 , longitude:85.3006743 , opens_at: '11 am', closes_at: '').audiences << [group_audience, couple_audience]


Location.create(name: "Ultimate Indoor Cricket", description:'Contact:985-1182623', category_id: sports.id, latitude:27.6787404 , longitude:85.2328224 , opens_at: '6 am', closes_at: '').audiences << [group_audience]

Location.create(name: "Royal Indoor Cricket", description:'Contact: 1-4372122', category_id: sports.id, latitude:27.6787051 , longitude:85.2328222 , opens_at: '-', closes_at: '-').audiences << [group_audience]

Location.create(name: "Laser Maxx, Civil Mall", description:'Contact: 981-8171067', category_id: sports.id, latitude:27.699205 , longitude:85.3105923 , opens_at: '10 am', closes_at: '').audiences << [group_audience]


Location.create(name: "Asterisk Climbing Wall", description:'Contact: 4419265', category_id: sports.id, latitude:27.7163348 , longitude:85.3103627 , opens_at: '10 am', closes_at: '').audiences << [single_audience, couple_audience, group_audience]

Location.create(name: "Pasang Lhamu Wall Climbing", description:'Contact: 1-4370742', category_id: sports.id, latitude:27.7317423 , longitude:85.34293343 , opens_at: '10 am', closes_at: '5 pm').audiences << [single_audience, couple_audience, group_audience]



Location.create(name: "Bowling, Civil Mall", description:'', category_id: sports.id, latitude:27.699205 , longitude:85.3105923 , opens_at: '-', closes_at: '-').audiences << [single_audience, couple_audience, group_audience]

Location.create(name: "Bowling, City Center Mall", description:'Contact:1-4419363', category_id: sports.id, latitude:27.7045664 , longitude:85.3152726 , opens_at: '-', closes_at: '-').audiences << [single_audience, couple_audience, group_audience]


Location.create(name: "Nepal Swimming Association", description:'', category_id: sports.id, latitude:27.6679713 , longitude:85.313928426 , opens_at: '-', closes_at: '-').audiences << [single_audience, couple_audience, group_audience]


Location.create(name: "Baneshwor Spa Swimming Pool", description:'Contact:1-4468596', category_id: sports.id, latitude:27.7095585, longitude:85.3089022 , opens_at: '5 am', closes_at: '-').audiences << [single_audience, couple_audience, group_audience]

Location.create(name: "Bulls Club Swimming Pool", description:'Contact:1-5592599', category_id: sports.id, latitude:27.6619214, longitude:85.2897861 , opens_at: '7 am', closes_at: '-').audiences << [single_audience, couple_audience, group_audience]



#Religious places
Location.create(name: "PashupatiNath", description:'The Pashupatinath Temple is a famous, sacred Hindu temple dedicated to Pashupatinath and is located on the banks of the Bagmati River 5 kilometres north-east of Kathmandu Valley in the eastern city of Kathmandu, the capital of Nepal', category_id: heritage.id, latitude:27.7104528 , longitude:85.3464986 , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "SwoyambhuNath", description:"Swayambhunath is an ancient religious architecture atop a hill in the Kathmandu Valley, west of Kathmandu city. The Tibetan name for the site means 'Sublime Trees', for the many varieties of trees found on the hill.", category_id: heritage.id, latitude:27.7149515 , longitude:85.2884397 , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Changu Narayan", description:'The ancient Hindu temple of Changu Narayan is located on a high hilltop that is also known as Changu or Dolagiri. The temple was surrounded by forest with champak tree and a small village, known as Changu Village', category_id: heritage.id, latitude:27.7163946 , longitude:85.4256231 , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "BoudhaNath Stupa", description:'Boudhanath is a stupa in Kathmandu, Nepal. It is known as Khāsti in Nepal Bhasa, Jyarung Khashor in Tibetan language or as Bauddha by speakers of Nepali.', category_id: heritage.id, latitude:27.7214093, longitude:85.3597323  , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Budhanilkantha", description:'Budhanilkantha Temple, located in Budhanilkantha, Nepal, is a Hindu open air temple dedicated to Lord Vishnu. Budhanilkantha Temple is located at the base of the Shivapuri Hill and can be identified by a large reclining statue of Lord Vishnu.', category_id: heritage.id, latitude:27.7781138 , longitude: 85.3604221, opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Dakshinkali", description:'Dakshinkali Temple or Dakshin Kali Temple, located 22 kilometres outside Kathmandu and about 1 kilometre outside the village of Pharping, is one of the main temples of Nepal dedicated to the goddess Kali.', category_id: heritage.id, latitude: 27.6050679, longitude: 85.2606803, opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Basantapur Durbar Square", description:'Kathmandu Durbar Square in front of the old royal palace of the former Kathmandu Kingdom is one of three Durbar Squares in the Kathmandu Valley in Nepal, all of which are UNESCO World Heritage Sites', category_id: heritage.id, latitude:27.704328, longitude:85.3051074 , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Patan Durbar Square", description:'Patan Durbar Square is situated at the centre of the city of Lalitpur in Nepal. It is one of the three Durbar Squares in the Kathmandu Valley, all of which are UNESCO World Heritage Sites.', category_id: heritage.id, latitude:27.6727305 , longitude: 85.3231056, opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Bhaktapur Durbar Square", description:'Bhaktapur Durbar Square is the plaza in front of the royal palace of the old Bhaktapur Kingdom, 1400m above sea level. It is one of three Durbar Squares in the Kathmandu Valley in Nepal, all of which are UNESCO World Heritage Sites.', category_id: heritage.id, latitude:27.672186 , longitude:85.4262673 , opens_at: '', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]

Location.create(name: "Sanga Mahadev(Kailashnath)", description:"Kailashnath Mahadev Statue is the world's tallest Shiva statue. It is situated in Sanga, the border of Bhaktapur and Kavrepalanchwok districts in Nepal which is about 20 km from Kathmandu.", category_id: heritage.id, latitude:27.6404111 , longitude:85.4824187 , opens_at: '7:30 am', closes_at: '').audiences << [kids_audience, family_audience, couple_audience, single_audience, group_audience]


#kids

Location.create(name: "Kathmandu Fun Valley", description:'Contact:1-6540712', category_id: kids.id, latitude:27.6471889 , longitude:85.4651807 , opens_at: '10 am', closes_at: '').audiences << [kids_audience, couple_audience, family_audience, group_audience, single_audience]

Location.create(name: "Bhrikuti Mandap Park", description:'', category_id: kids.id, latitude:27.7015661 , longitude: 85.3173137, opens_at: '10 am', closes_at: '').audiences << [kids_audience, couple_audience]

Location.create(name: "Bal Sansar, Civil Mall", description:'Contact:1-4258429', category_id: kids.id, latitude:27.69912, longitude:85.3105943 , opens_at: '-', closes_at: '-').audiences << [kids_audience]


#Museums

Location.create(name: "Nation Museum, Chhauni", description:'', category_id: kids.id, latitude:27.714366 , longitude:85.2859834 , opens_at: '10 am', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience]

Location.create(name: "Hanuman Dhoka Museum", description:'', category_id: kids.id, latitude:27.7043, longitude:85.3051679 , opens_at: '9:00 AM', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience]

Location.create(name: "Patan Museum", description:'', category_id: kids.id, latitude:27.6471889 , longitude:85.4651807 , opens_at: '10:30 am', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience]

Location.create(name: " National Art Museum", description:'', category_id: kids.id, latitude:27.673373 , longitude:85.4333123 , opens_at: '10 am', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience]

Location.create(name: "Narayanhiti palace museum", description:'', category_id: kids.id, latitude:27.7179483 , longitude:85.3163709 , opens_at: '11 am', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience]



#Events

Event.create(name: "BAC Mela (Open Air Flea Market)", description:"On Saturday 25th June, 2016 the Bikalpa Art Center (BAC)/ BAC ART CAFE will turn into a Festive Mela place again the BAC's Monthly Market. The Mela will showcase i.) Made in Nepal products ii.) Local food and drinks and iii.) Second hand garage sale.

Live Music, Art Exhibition and entertainment is a part of the event. In addition there will be extra activities like open mic session, face painting, live portrait drawing, art and craft workshop for children and adults. It will also feature musical bands and dj night after party from 7:00pm onwards.

Stallholder detail information on Mela and online registration will be available on our website as following.

Information pack: http://www.bikalpaartcenter.org/?page_id=1853

Online Registration: http://www.bikalpaartcenter.org/?page_id=1359", category_id: sports.id,latitude: 27.679351, longitude:85.3164889, starts_at: "2016-06-25 13:00:00", ends_at: DateTime.now + 1.day).audiences << [kids_audience, family_audience, group_audience, single_audience]


Event.create(name: "Live Musical Era-2016 \"Season-5\"", description:"Live Musical Era-2016 \"Season-5\"

Live Musical Era-2016, Kathmandu! the place to be if you want to flow with the music, want to enjoy drinks with your friends or just want to party hard! And that’s not all we’ll be giving away tons of gift through a lucky draw process during the event, so come and test your luck. You might go back home with much more than you had come with.

We have limited the crowd to 700 poeple only so hurry up and get your tickets before the place gets packed!

Ticket price: Rs. 1000/-

http://www.femnepal.com/news/live-musical-era-2016season-5/", category_id: sports.id, starts_at: "2016-06-25 19:00:00").audiences << [couple_audience, group_audience, single_audience]


#Cinema

Location.create(name: "QFX, Civil Mall", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.6993664, longitude:85.3102312, opens_at: '8 am', closes_at: '11 pm').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]

Location.create(name: "QFX, Labim Mall", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.6773335, longitude:85.3169703, opens_at: '8 am', closes_at: '11 pm').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]

Location.create(name: "QFX, Kumari Hall", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.7090157, longitude:85.3231044, opens_at: '8 am', closes_at: '').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]

Location.create(name: "QFX, Jai Nepal Hall", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.7136845, longitude:85.3195137, opens_at: '-', closes_at: '-').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]

Location.create(name: "Big Movies", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.7097105, longitude:85.324455, opens_at: '8 am', closes_at: '7 pm').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]

Location.create(name: "FCube Cinemas", description:'Watch the latest movies in the town!', category_id: cinema.id, latitude:27.71822, longitude:85.3477433, opens_at: '10 am', closes_at: '8 pm').audiences << [kids_audience, family_audience, group_audience, single_audience,family_audience]


# indoor activities
book = IndoorActivity.create(name: "Alchemist", description: "The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho first published in 1988. Originally written in Portuguese, it has been translated into at least 67 languages as of October 2009. An allegorical novel, The Alchemist follows a young Andalusian shepherd named Santiago in his journey to Egypt, after having a recurring dream of finding treasure there.", category_id: books.id).audiences << [single_audience]


book = IndoorActivity.create(name: "To Kill a Mockingbird",release_date: '1960', description: "The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.", category_id: books.id).audiences << [single_audience]

book = IndoorActivity.create(name: "The Catcher in the Rye", description: "Since his debut in 1951 as The Catcher in the Rye, Holden Caulfield has been synonymous with 'cynical adolescent.' Holden narrates the story of a couple of days in his sixteen-year-old life, just after he's been expelled from prep school, in a slang that sounds edgy even today and keeps this novel on banned book lists. His constant wry observations about what he encounters, from teachers to phonies (the two of course are not mutually exclusive) capture the essence of the eternal teenage experience of alienation.", category_id: books.id).audiences << [single_audience]

book = IndoorActivity.create(name: "Catch-22",description: "At the heart of Catch-22 resides the incomparable, malingering bombardier, Yossarian, a hero endlessly inventive in his schemes to save his skin from the horrible chances of war.", category_id: books.id).audiences << [single_audience]

book = IndoorActivity.create(name: "Watchmen",description: "This Hugo Award-winning graphic novel chronicles the fall from grace of a group of super-heroes plagued by all-too-human failings. Along the way, the concept of the super-hero is dissected as the heroes are stalked by an unknown assassin.
", category_id: books.id).audiences << [single_audience]


video_game = IndoorActivity.create(name: "Dark Souls 3",description: "Dark Souls III is an action role-playing video game developed by FromSoftware and published by Bandai Namco Entertainment for PlayStation 4, Xbox One, and Microsoft Windows.", category_id: video_games.id).audiences << [single_audience]

video_game = IndoorActivity.create(name: "Far Cry Primal",description: "Far Cry Primal is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It was released for the PlayStation 4, Xbox One, and Microsoft Windows in 2016. Wikipedia
", category_id: video_games.id).audiences << [single_audience]

video_game = IndoorActivity.create(name: "X Com 2",description: "XCOM 2 is a turn-based tactics video game developed by Firaxis Games and published by 2K Games. It was released for Microsoft Windows, OS X, and Linux on February 5, 2016, and will be released for PlayStation 4 and Xbox One in September 2016.", category_id: video_games.id).audiences << [single_audience]

video_game = IndoorActivity.create(name: "Counter Strike: Global Offensive",description: "Counter-Strike: Global Offensive is an online first-person shooter video game developed by Hidden Path Entertainment and Valve Corporation. It is the fourth game in the main Counter-Strike franchise.", category_id: video_games.id).audiences << [group_audience]

video_game = IndoorActivity.create(name: "Skyrim",description: "The Elder Scrolls V: Skyrim is an open world action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. It is the fifth installment in The Elder Scrolls series, following The Elder Scrolls IV: Oblivion", category_id: video_games.id).audiences << [single_audience]



