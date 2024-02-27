# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'
require "open-uri"

puts "Cleaning the listings data..."
Listing.destroy_all
User.destroy_all

puts "Creating sample listing data..."
#  Columns address, category, rating, price_per_night, has_pool, has_garden, number_of_rooms


 user1 = User.create!(first_name: "sema",
                      last_name: "karan",
                      email: "hello.rbnb@gmail.com",
                      password: "1234test"
                    )

10.times do
  listing = Listing.new(address: Faker::Address.street_address,
                        category: ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"].sample,
                        rating: rand(0..5),
                        price_per_night: rand(20..200),
                        has_pool: [true, false].sample,
                        has_garden: [false, true].sample,
                        number_of_rooms: rand(1..5))
  listing.user = user1
  file = URI.open("https://images.unsplash.com/photo-1600210491369-e753d80a41f3?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1200&ixid=MnwxfDB8MXxyYW5kb218MHx8aW50ZXJpb3J8fHx8fHwxNzA5MDM1NjE1&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1600")
  listing.photos.attach(io: file, filename: "home.png", content_type: "image/png")
  listing.save!
end
puts "user1 saved"

user2 = User.create!(first_name: "Loes",
  last_name: "van Puijenbroek",
  email: "hello.Loes@gmail.com",
  password: "1234test"
)
4.times do
  listing = Listing.new(address: Faker::Address.street_address,
                        category: ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"].sample,
                        rating: rand(0..5),
                        price_per_night: rand(20..200),
                        has_pool: [true, false].sample,
                        has_garden: [false, true].sample,
                        number_of_rooms: rand(1..5))
  listing.user = user2
  file = URI.open("https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=2758&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
  listing.photos.attach(io: file, filename: "home.png", content_type: "image/png")
  listing.save!
end
puts "user2 saved"

user3 = User.create!(first_name: "Allison",
  last_name: "Chen",
  email: "hello.Allison@gmail.com",
  password: "1234test"
)
3.times do
  listing = Listing.new(address: Faker::Address.street_address,
                        category: ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"].sample,
                        rating: rand(0..5),
                        price_per_night: rand(20..200),
                        has_pool: [true, false].sample,
                        has_garden: [false, true].sample,
                        number_of_rooms: rand(1..5))
  listing.user = user3
  file = URI.open("https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?q=80&w=2948&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
  listing.photos.attach(io: file, filename: "home.png", content_type: "image/png")
  listing.save!
end
puts "user3 saved"

user4 = User.create!(first_name: "Heiddis",
  last_name: "Birta",
  email: "hello.Heiddis@gmail.com",
  password: "1234test"
)
5.times do
  listing = Listing.new(address: Faker::Address.street_address,
                        category: ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"].sample,
                        rating: rand(0..5),
                        price_per_night: rand(20..200),
                        has_pool: [true, false].sample,
                        has_garden: [false, true].sample,
                        number_of_rooms: rand(1..5))
  listing.user = user4
  file = URI.open("https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?q=80&w=2948&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
  listing.photos.attach(io: file, filename: "home.png", content_type: "image/png")
  listing.save!
end
puts "user4 saved"

puts "listings sample data created!"
