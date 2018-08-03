# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all
Booking.destroy_all

user1 = User.create!(first_name: "John", last_name: "Doe", email: "john.dog@gmail.com", password: "password1")
user2 = User.create!(first_name: "Hugo", last_name: "Collado", email: "hugostar@ymail.com", password: "password2")
user3 = User.create!(first_name: "Reed", last_name: "VanAn", email: "Vanreed@hotmail.com", password: "password3")
user4 = User.create!(first_name: "Lance", last_name: "Purnell", email: "Lancekrp@yahoo.com", password: "password4")
user5 = User.create!(first_name: "James", last_name: "Douglas", email: "JDouglas@jizzmail.com", password: "password5")
user6 = User.create!(first_name: "Dirk", last_name: "wagon", email: "dirk@lewagon.com", password: "password6")

item = Item.new(user_id: 2, price: 100, name: "Snowboard", description: "Good for snowboarding in the Alpes", category: "Snow", photo: "https://images.pexels.com/photos/376697/pexels-photo-376697.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "10 Erlin Ter, Tewksbury, Massachusetts(MA), 01876", published: true)
item.save!
item = Item.new(user_id: 3, price: 120, name: "Surf Board", description: "will feel like Moses when surfing the sea", category: "Water", photo: "https://images.pexels.com/photos/757133/pexels-photo-757133.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "1825 E 13th Ave, Winfield, Kansas(KS), 67156", published: true)
item.save!
item = Item.new(user_id: 2, price: 30, name: "Badminton with shuttlecocks", description: "Complete set without net", category: "Outdoor", photo: "https://images.pexels.com/photos/115016/badminton-shuttle-sport-bat-115016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "29 George St, Medford, Massachusetts(MA), 02155", published: true)
item.save!
item = Item.new(user_id: 2, price: 45, name: "Tennis Racket", description: "Tennis ball and racket", category: "Outdoor", photo: "https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "14 Makinson Avenue, Wigan, WN2 2SE", published: true)
item.save!
item = Item.new(user_id: 3, price: 99, name: "Tent", description: "Large Tent for a family outing in the woods", category: "Outdoor", photo: "https://images.pexels.com/photos/756780/pexels-photo-756780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "10 Old Hall Meadow, Bury St. Edmunds, IP30 0QZ", published: true)
item.save!
item = Item.new(user_id: 4, price: 50, name: "Skis", description: "A pair of skis", category: "Snow", photo: "https://images.pexels.com/photos/257961/pexels-photo-257961.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", address: "Jln. Bayam No. 495, Tegal 65269, Bali", published: true)
item.save!
item = Item.new(user_id: 2, price: 10, name: "Portable BBQ", description: "Portable BBG for outdoor hiking use", category: "Mountain", photo: "https://images.pexels.com/photos/1171585/pexels-photo-1171585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "32353 N Forest Dr, Grayslake, Illinois(IL), 60030", published: true)
item.save!
item = Item.new(user_id: 4, price: 4000, name: "Parachute", description: "Slightly used Parachute", category: "Sky", photo: "https://images.pexels.com/photos/67298/parachute-paratrooper-parachutist-land-67298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", address: "Calle de Caracas, 21, 28010 Madrid, Spain", published: true)
item.save!
item = Item.new(user_id: 5, price: 560, name: "ATV", description: "Large All terrain vehicle for cross country mountain use", category: "mountain", photo: "https://images.pexels.com/photos/910623/pexels-photo-910623.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "133, chemin Grondin, 07 469 Gay", published: true)
item.save!
item = Item.new(user_id: 2, price: 200, name: "Kite surf", description: "Kite surfing for 2", category: "Sky", photo: "https://images.pexels.com/photos/205518/pexels-photo-205518.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "place de Lejeune, 16 808 Bigot" , published: true)
item.save!
item = Item.new(user_id: 5, price: 10000, name: "JetSki", description: "Ride like Jesus with this awesome JetSki", category: "Water", photo: "https://images.pexels.com/photos/33046/jet-ski-water-sport-water-bike-water.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Psr. Sugiono No. 341, Kupang 78560, PapBar", published: true)
item.save!
item = Item.new(user_id: 4, price: 3, name: "Kite", description: "Cheap and wonderful for your pleasure", category: "Wind", photo: "https://images.pexels.com/photos/929362/pexels-photo-929362.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Ds. Abdullah No. 247, Yogyakarta 27227, NTB", published: true)
item.save!

booking = Booking.new(user_id: 1, item_id: 3, start_date: " Fri, 08 Dec 2017 00:00:00 UTC +00:00", end_date: "Sun, 10 Dec 2017 00:00:00 UTC +00:00", price: 30)
booking.save!
booking = Booking.new(user_id: 1, item_id: 1, start_date: " Tue, 12 Dec 2017 00:00:00 UTC +00:00", end_date: "Wed, 13 Dec 2017 00:00:00 UTC +00:00", price: 100)
booking.save!
booking = Booking.new(user_id: 1, item_id:12, start_date: " Thu, 21 Dec 2017 00:00:00 UTC +00:00", end_date: "Sat, 23 Dec 2017 00:00:00 UTC +00:00", price: 3)
booking.save!
booking = Booking.new(user_id: 1, item_id: 6, start_date: " Sat, 30 Dec 2017 00:00:00 UTC +00:00", end_date: "Fri, 05 Jan 2018 00:00:00 UTC +00:00", price: 50)
booking.save!
booking = Booking.new(user_id: 1, item_id: 7, start_date: " Thu, 08 Mar 2018 00:00:00 UTC +00:00", end_date: "Thu, 15 Mar 2018 00:00:00 UTC +00:00", price: 10)
booking.save!
booking = Booking.new(user_id: 6, item_id: 10, start_date: " Mon, 09 Apr 2018 00:00:00 UTC +00:00", end_date: "Tue, 10 Apr 2018 00:00:00 UTC +00:00", price: 200)
booking.save!
booking = Booking.new(user_id: 6, item_id: 11, start_date: " Tue, 24 Apr 2018 00:00:00 UTC +00:00", end_date: "Fri, 27 Apr 2018 00:00:00 UTC +00:00", price: 10000)
booking.save!
booking = Booking.new(user_id: 6, item_id: 4, start_date: " Sun, 17 Jun 2018 00:00:00 UTC +00:00", end_date: "Wed, 20 Jun 2018 00:00:00 UTC +00:00", price: 45)
booking.save!
booking = Booking.new(user_id: 6, item_id: 5, start_date: " Fri, 20 Jul 2018 00:00:00 UTC +00:00", end_date: "Sat, 28 Jul 2018 00:00:00 UTC +00:00", price: 99)
booking.save!
booking = Booking.new(user_id: 6, item_id: 9, start_date: " Wed, 01 Aug 2018 00:00:00 UTC +00:00", end_date: "Thu, 02 Aug 2018 00:00:00 UTC +00:00", price: 560)
booking.save!
booking = Booking.new(user_id: 6, item_id: 3, start_date: " Fri, 17 Aug 2018 00:00:00 UTC +00:00", end_date: "Fri, 24 Aug 2018 00:00:00 UTC +00:00", price: 30)
booking.save!

itemreview = ItemReview.new(booking_id: 1, rating: 4, content: "Was good")
itemreview.save!
itemreview = ItemReview.new(booking_id: 2, rating: 5, content: "Awesome!")
itemreview.save!
itemreview = ItemReview.new(booking_id: 3, rating: 1, content: "shit, never book this again!")
itemreview.save!
itemreview = ItemReview.new(booking_id: 4, rating: 2, content: "Wow, not good!")
itemreview.save!
itemreview = ItemReview.new(booking_id: 5, rating: 3, content: "Could be better")
itemreview.save!
itemreview = ItemReview.new(booking_id: 6, rating: 3, content: "Good")
itemreview.save!
itemreview = ItemReview.new(booking_id: 7, rating: 2, content: "Meh! was kinda crap")
itemreview.save!
itemreview = ItemReview.new(booking_id: 8, rating: 1, content: "Would not recommend")
itemreview.save!
itemreview = ItemReview.new(booking_id: 9, rating: 5, content: "Wow, will never forget this experience")
itemreview.save!
itemreview = ItemReview.new(booking_id: 10, rating: 4, content: "pretty good")
itemreview.save!







