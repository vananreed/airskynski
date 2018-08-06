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

item = Item.new(user_id: 2, price: 100, name: "Snowboard", description: "Snowboard Rental in Bali. Fun, easy and effective material suitable for all types of terrain for surfing in relaxation.", category: "Snow", remote_photo_url: "https://images.pexels.com/photos/376697/pexels-photo-376697.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jl. Wana Segara No. 2-5, Kuta, Bali, 80361, Indonesia", latitude: -8.737237, longitude: 115.166695, published: true)
item.save!
item = Item.new(user_id: 3, price: 120, name: "Surf Board", description: "Surfboard rental in Bali. Specifically dedicated to test rides. This model, which inaugurates the FREAKY category, was made for all surfers looking for a board for extreme conditions. The very wide tip and a tense entry rocker, together to surf both in a backward position on the stern for greater radicality, is in a centered position for a more classic surfing. The particular shape of the diamond squash stern, the thickness not too high, a medium rocker output, the tension under the rear edge of having a very lively, reactive, but at the same time controllable board. To ensure maximum speed is the propulsion system (for greater maneuverability).", category: "Water", remote_photo_url: "https://images.pexels.com/photos/757133/pexels-photo-757133.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "l. Bakung Sari, Kuta, Bali, 80361, Indonesia", latitude: -8.725392, longitude: 115.174832, published: true)
item.save!
item = Item.new(user_id: 2, price: 30, name: "Badminton set with shuttlecocks", description: "These rackets feature top technology for speed and excellent repulsion. Designed for versatile badminton players looking for power, and the shuttlecocks will provide you with stable trajectories thanks to its plastic skirt. A small touch of colour keeps the shuttle nicely visible while in play.", category: "Outdoor", remote_photo_url: "https://images.pexels.com/photos/115016/badminton-shuttle-sport-bat-115016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jalan Poppies 2 Gg Ronta, Kuta, Bali, 80361, Indonesia", latitude: -8.718089, longitude: 115.173681, published: true)
item.save!
item = Item.new(user_id: 2, price: 45, name: "Tennis Racket", description: "This tennis racket is perfect for your holidays! Ready to use, comes with 2 rackets and balls for playing with family or friends.", category: "Outdoor", remote_photo_url: "https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jl. Moh Yamin IX no 21, Renon, Denpasar, Bali, 80226, Indonesia", latitude: -8.668388, longitude: 115.241466, published: true)
item.save!
item = Item.new(user_id: 3, price: 99, name: "Tent", description: "Staying in a hotel is so last year - why not get your friends and family together for a camping holiday instead? This is a pop-up tent that is also easy-to-carry, for one or two people, all the way up to a family of 6.", category: "Outdoor", remote_photo_url: "https://images.pexels.com/photos/756780/pexels-photo-756780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jl. Danau Tamblingan 168 - 170, Denpasar, Bali, 80228, Indonesia", latitude: -8.696594, longitude: 115.263442, published: true)
item.save!
item = Item.new(user_id: 4, price: 50, name: "Skis", description: "Designed for advanced skiers on groomed slopes. Suited to 90% carving slopes, and 10% all types of snow, they are forgiving and easy to handle, making them a very good tool for learning to carve in very good conditions.", category: "Snow", remote_photo_url: "https://images.pexels.com/photos/257961/pexels-photo-257961.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", address: "Jln. Bayam No. 495, Tegal 65269, Bali", latitude: -8.340539, longitude: 115.091951, published: true)
item.save!
item = Item.new(user_id: 2, price: 10, name: "Portable BBQ", description: "Designed for The camper seeking a lightweight BBQ. Ideal for camping! Simple and stable.", category: "Outdoor", remote_photo_url: "https://images.pexels.com/photos/1171585/pexels-photo-1171585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Hangtuah Street III/3, Denpasar, Bali, 80227, Indonesia", latitude: -8.673737, longitude: 115.261939, published: true)
item.save!
item = Item.new(user_id: 4, price: 4000, name: "Parachute", description: "Why rent by the jump when you can rent by the day. We rent skydiving gear to give local and/or visiting Jumpers, in Bali, the ability to jump more times for less money. We know it's expensive to skydive when you are first starting out. Let us make it easier by renting you quality equipment on a daily basis.", category: "Wind", remote_photo_url: "https://images.pexels.com/photos/67298/parachute-paratrooper-parachutist-land-67298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", address: "Jl Patih Jelantik No 1, Denpasar, 80113, Indonesia", latitude: -8.668566, longitude: 115.216218, published: true)
item.save!
item = Item.new(user_id: 5, price: 560, name: "ATV", description: "Horsepower matters when it comes to mud riding. That's why this All Terrain Vehicle is built with an 89-hp Rotax® 1000R V-Twin engine. Take on any mud hole with confidence and best-in-class power.", category: "Outdoor", remote_photo_url: "https://images.pexels.com/photos/910623/pexels-photo-910623.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jl. Tukad Punggawa, Denpasar, Bali, 80229, Indonesia", latitude: -8.724696, longitude: 115.233603, published: true)
item.save!
item = Item.new(user_id: 2, price: 200, name: "Kite surf", description: "An easy-to-ride, versatile and powerful board. Beginners & intermediates will be able to ride safely thanks to the soft fins, advanced riders can boost it by installing their own composite fins", category: "Wind", remote_photo_url: "https://images.pexels.com/photos/205518/pexels-photo-205518.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jalan Sunset Road No. 65, 7 Days Premium, Kuta, Bali, 80361, Indonesia" , latitude: -8.704957, longitude: 115.181429, published: true)
item.save!
item = Item.new(user_id: 5, price: 10000, name: "JetSki", description: "Whether you’re a tourist or local to the area, we offers visitors the perfect way to spend a hot, summer afternoon in Bali: ripping across the water on a waverunner. Our jet ski rental can carry up to three passengers, are well-maintained for your safety, and have plenty of power to tear it up on the coast line. No matter how long you want to spend on the water, we can accommodate any time frame or budget. We even offer early bird specials if you’re wanting to get on the water before the crowds!", category: "Water", remote_photo_url: "https://images.pexels.com/photos/33046/jet-ski-water-sport-water-bike-water.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350", address: "Jalan Dewi Sri No 8 Legian, Kuta, Legian, Bali, 80361, Indonesia", latitude: -8.709401, longitude: 115.179777, published: true)
item.save!

booking = Booking.new(user_id: 1, item_id: 3, start_date: " Fri, 08 Dec 2017 00:00:00 UTC +00:00", end_date: "Sun, 10 Dec 2017 00:00:00 UTC +00:00", price: 30)
booking.save!
booking = Booking.new(user_id: 1, item_id: 1, start_date: " Tue, 12 Dec 2017 00:00:00 UTC +00:00", end_date: "Wed, 13 Dec 2017 00:00:00 UTC +00:00", price: 100)
booking.save!
booking = Booking.new(user_id: 1, item_id: 6, start_date: " Sat, 30 Dec 2017 00:00:00 UTC +00:00", end_date: "Fri, 05 Jan 2018 00:00:00 UTC +00:00", price: 50)
booking.save!
booking = Booking.new(user_id: 1, item_id: 7, start_date: " Thu, 08 Mar 2018 00:00:00 UTC +00:00", end_date: "Thu, 15 Mar 2018 00:00:00 UTC +00:00", price: 10)
booking.save!
booking = Booking.new(user_id: 1, item_id: 10, start_date: " Mon, 09 Apr 2018 00:00:00 UTC +00:00", end_date: "Tue, 10 Apr 2018 00:00:00 UTC +00:00", price: 200)
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
itemreview = ItemReview.new(booking_id: 3, rating: 2, content: "Wow, not good!")
itemreview.save!
itemreview = ItemReview.new(booking_id: 4, rating: 3, content: "Could be better")
itemreview.save!
itemreview = ItemReview.new(booking_id: 5, rating: 3, content: "Good")
itemreview.save!
itemreview = ItemReview.new(booking_id: 6, rating: 2, content: "Meh! was kinda crap")
itemreview.save!
itemreview = ItemReview.new(booking_id: 7, rating: 1, content: "Would not recommend")
itemreview.save!
itemreview = ItemReview.new(booking_id: 8, rating: 5, content: "Wow, will never forget this experience")
itemreview.save!
itemreview = ItemReview.new(booking_id: 9, rating: 4, content: "pretty good")
itemreview.save!







