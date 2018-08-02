# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all

user1 = User.create!(first_name: "John", last_name: "Doe", email: "john.dog@gmail.com", password: "password1")
user2 = User.create!(first_name: "Hugo", last_name: "Collado", email: "hugostar@ymail.com", password: "password2")
user3 = User.create!(first_name: "Reed", last_name: "VanAn", email: "Vanreed@hotmail.com", password: "password3")
user4 = User.create!(first_name: "Lance", last_name: "Purnell", email: "Lancekrp@yahoo.com", password: "password4")
user5 = User.create!(first_name: "James", last_name: "Douglas", email: "JDouglas@jizzmail.com", password: "password5")

item = Item.new(price: 100, name: "Snowboard", description: "Good for snowboarding in the Alpes", category: "Snow", photo: "URL", address: "Alpes, France", published: true)
item.user = user1
item.save!
item = Item.new(price: 120, name: "Surf Board", description: "will feel like Moses when surfing the sea", category: "Water", photo: "URL", address: "Canggu Beach front", published: true)
item.user = user1
item.save!
item = Item.new(price: 30, name: "Badmington set", description: "Complete set without net", category: "Outdoor", photo: "URL", address: "Barcelona, Spain", published: true)
item.user = user2
item.save!
item = Item.new(price: 45, name: "Tennis Rackets", description: "Set of 2 rackets with a handfull of balls", category: "Outdoor", photo: "URL", address: "Bali Resort", published: true)
item.user = user2
item.save!
item = Item.new(price: 99, name: "Tent", description: "Large Tent for a family outing in the woods", category: "Outdoor", photo: "URL", address: "Space Mountain", published: true)
item.user = user3
item.save!
item = Item.new(price: 50, name: "Skis", description: "a pair of skiis", category: "Snow", photo: "URL", address: "Rocky Road street", published: true)
item.user = user1
item.save!
item = Item.new(price: 10, name: "Portable BBQ", description: "Portable BBG for outdoor hiking use", category: "Mountain", photo: "URL", address: "Jungle Panther road 5", published: true)
item.user = user2
item.save!
item = Item.new(price: 4000, name: "Parachutes", description: "Enough parachutes for a party of 5, but one may not work", category: "Sky", photo: "URL", address: "Somewhere, Have no clue", published: true)
item.user = user4
item.save!
item = Item.new(price: 560, name: "ATV", description: "Large All terrain vehicle for cross country mountain use", category: "mountain", photo: "URL", address: "Another Address somewhere", published: true)
item.user = user5
item.save!
item = Item.new(price: 200, name: "Kite surf", description: "Kite surfing for 2", category: "Sky", photo: "URL", address: "The yellow brick road" , published: true)
item.user = user2
item.save!
item = Item.new(price: 10000, name: "JetSki", description: "like regular skiis but with a jet pack", category: "Water", photo: "URL", address: "Ol' Mc Donalds Farm", published: true)
item.user = user1
item.save!
item = Item.new(price: 3, name: "Kite", description: "Cheap and wonderful for your pleasure", category: "Wind", photo: "URL", address: "barawa street, Cangguy", published: true)
item.user = user4
item.save!
