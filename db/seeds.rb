# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'
require "open-uri"

puts "Cleaning the listings data..."
Offer.destroy_all
Listing.destroy_all
User.destroy_all

puts "Creating sample listing data..."
#  Columns address, category, rating, price_per_night, has_pool, has_garden, number_of_rooms
url = "https://source.unsplash.com/random/1600x1200/?interior"

user1 = User.create!(first_name: "sema",
                     last_name: "karan",
                     email: "hello.rbnb@gmail.com",
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
  listing.user = user1
  file1 = URI.open(url)
  file2 = URI.open(url)
  file3 = URI.open(url)
  listing.photos.attach(io: file1, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file2, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file3, filename: "home.png", content_type: "image/png")
  listing.save!
end

puts "user1 saved"

user2 = User.create!(first_name: "Loes",
                     last_name: "van Puijenbroek",
                     email: "hello.Loes@gmail.com",
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
  listing.user = user2
  file1 = URI.open(url)
  file2 = URI.open(url)
  file3 = URI.open(url)
  listing.photos.attach(io: file1, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file2, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file3, filename: "home.png", content_type: "image/png")
  listing.save!
end

puts "user2 saved"

user3 = User.create!(first_name: "Allison",
                     last_name: "Chen",
                     email: "hello.Allison@gmail.com",
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
  listing.user = user3
  file1 = URI.open(url)
  file2 = URI.open(url)
  file3 = URI.open(url)
  listing.photos.attach(io: file1, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file2, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file3, filename: "home.png", content_type: "image/png")
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
  file1 = URI.open(url)
  file2 = URI.open(url)
  file3 = URI.open(url)
  listing.photos.attach(io: file1, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file2, filename: "home.png", content_type: "image/png")
  listing.photos.attach(io: file3, filename: "home.png", content_type: "image/png")
  listing.save!
end

puts "user4 saved"

puts "listings sample data created!"
