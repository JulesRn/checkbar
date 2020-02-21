# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# [user1, user2, user3].each do |user|



Reservation.destroy_all
Bar.destroy_all
User.destroy_all

user = User.new(email:"coucou12345678@gmail.com", password: "coucou1234567", username: 'Aurian')
user.save!

# photo = ["https://unsplash.com/photos/Uz1ZeMJ2lsI","https://unsplash.com/photos/MxfcoxycH_Y", "https://unsplash.com/photos/iRF0psyhz10", "https://unsplash.com/photos/Zrp9b3PMIy8]
category = ["Rooftop", "Branché", "Lounge", "Vins", "Latino", "Pub", "Tapas", "Dansant", "Insolite", "Karaoké", "Billard", "Foot", "Club", "Sport", "Piano", "Anniversaire"]
capacity = (rand(1..100))
photo = ["https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122027/1580214800_5e302a104f398_u1glvq.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122028/1575380060_5de6645c3bc73_v5qg3n.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122027/1579115004_5e1f61fc821b9_ztyisa.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122026/1562690558_5d24c3fe96d42_kcjeum.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122025/1564652561_5d42b4116e71d_1_xl3gxd.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122025/1562690558_5d24c3feed014_uzenpr.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562579004_5d23103c2c21e_jay3ur.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562579004_5d23103c2c21e_jay3ur.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578758_5d230f46234a0_jurhoi.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578599_5d230ea79216f_bjyqbf.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578729_5d230f29e6535_tl3web.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578574_5d230e8e429aa_zpbgav.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578990_5d23102e4006d_rcg46d.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582122024/1562578990_5d23102e4006d_rcg46d.jpg",
  "https://res.cloudinary.com/ddw4b3fnq/image/upload/v1582117811/3g29qb0h64p7mqwhwg34rscm4but.jpg"]

puts "try to create bar"


10.times do

bar = Bar.create!(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description ,
    capacity: capacity,
    address:Faker::Address.street_address,
    category: category.sample,
    opening_hours: Time.parse('18:00'),
    closing_hours: Time.parse('03:00'),
    photo: photo.sample,
    user: user,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
  )
  puts "#{bar.name}"
end

