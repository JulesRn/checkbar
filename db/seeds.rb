# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# [user1, user2, user3].each do |user|



Bar.destroy_all

user = User.new(email:"coucou12345@gmail.com", password: "coucou1234567")
user.save!

# photo = ["https://unsplash.com/photos/Uz1ZeMJ2lsI","https://unsplash.com/photos/MxfcoxycH_Y", "https://unsplash.com/photos/iRF0psyhz10", "https://unsplash.com/photos/Zrp9b3PMIy8]
category = ["Rooftop", "Branché", "Lounge", "Vins", "Latino", "Pub", "Tapas", "Dansant", "Insolite", "Karaoké", "Billard", "Foot", "Club", "Sport", "Piano", "Anniversaire"]
capacity = (rand(1..100))

puts "try to create bar"

20.times do
bar = Bar.create!(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description ,
    capacity: capacity,
    address:Faker::Address.street_address,
    category: category.sample,
    opening_hours: DateTime.now,
    closing_hours: DateTime.now,
    photo: url("https://source.unsplash.com/collection/622208/bar/1600x900"),
    user: user,

  )
  puts "#{bar.name}"
end

