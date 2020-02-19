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
User.destroy_all

user = User.new(email:"coucou12345678@gmail.com", password: "coucou1234567")
user.save!

# photo = ["https://unsplash.com/photos/Uz1ZeMJ2lsI","https://unsplash.com/photos/MxfcoxycH_Y", "https://unsplash.com/photos/iRF0psyhz10", "https://unsplash.com/photos/Zrp9b3PMIy8]
category = ["Rooftop", "Branché", "Lounge", "Vins", "Latino", "Pub", "Tapas", "Dansant", "Insolite", "Karaoké", "Billard", "Foot", "Club", "Sport", "Piano", "Anniversaire"]
capacity = (rand(1..100))
photo = ["https://images.pexels.com/photos/3262277/pexels-photo-3262277.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://images.pexels.com/photos/219095/pexels-photo-219095.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://images.pexels.com/photos/1554654/pexels-photo-1554654.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/1301547/pexels-photo-1301547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://images.pexels.com/photos/331107/pexels-photo-331107.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]

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
    photo: photo.sample,
    user: user,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,


  )
  puts "#{bar.name}"
end

