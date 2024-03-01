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

url = "https://source.unsplash.com/random/600X600/?interior"

address = [["Prinsengracht 328 - 332", "Amsterdam", "Netherlands"], ["'s-Gravesandestraat 55", "Amsterdam", "Netherlands"],
           ["Valkenburgerstraat 14", "Amsterdam", "Netherlands"],["Jan Luykenstraat 58", "Amsterdam", "Netherlands"],
           ["Sarphatistraat 47", "Amsterdam", "Netherlands"], ["Nieuwe Doelenstraat 24", "Amsterdam", "Netherlands"],
           ["Via dei Prefetti 19", "Rome", "Italy"], ["Via M. Dionigi 16", "Rome", "Italy"],
           ["Via Dei Pettinari 6", "Rome", "Italy"],
           ["Via XXIV Maggio 7", "Rome", "Italy"], ["Via Dei Serpenti 109-110", "Rome", "Italy"],
           ["Viale di Trastevere 60", "Rome", "Italy"], ["Viale Glorioso 14", "Rome", "Italy"],
           ["Via Degli Orti Di Trastevere 3", "Rome", "Italy"],
           ["Josep Anselm Clavé, 27, Ciutat Vella", "Barcelona", "Spain"],
           ["Avenida Marques de Argentera, 11, Ciutat Vella", "Barcelona", "Spain"],
           ["Pelai, 22-24, Ciutat Vella", "Barcelona", "Spain"],
           ["Carrer Girona, 176, Eixample", "Barcelona", "Spain"], ["Avenida Paral.lel, 64, Ciutat Vella", "Barcelona", "Spain"],
           ["2 Bd Garibaldi", "Barcelona", "Spain"], ["4 Rue Des Innocents", "Paris", "France"],
           ["37 Boulevard Richard Lenoir", "Paris", "France"], ["5 rue Tholoze", "Paris", "France"],
           ["15 rue Edouard Manet", "Paris", "France"], ["17 boulevard Kellermann", "Paris", "France"],
           ["157 Waterloo Road, Lambeth", "London", "United Kingdom"],
           ["1 Addington Street, Lambeth", "London", "United Kingdom"],
           ["372 Strand, Westminster Borough", "London", "United Kingdom"],
           ["38-51 Bedford Way, Camden", "London", "United Kingdom"],
           ["45 Prescot Street, Tower Hamlets", "London", "United Kingdom"],
           ["35 Ixworth Place, Kensington and Chelsea", "London", "United Kingdom"],
           ["Rua Portas De Santo Antão 99, Santa Maria Maior", "Lisbon", "Portugal"],
           ["1 Rua Manuel Jesus Coelho, Santo Antonio", "Lisbon", "Portugal"],
           ["Rua Augusta, 220 , Santa Maria Maior", "Lisbon", "Portugal"],
           ["Rua Nova do Carvalho, 15, Misericordia", "Lisbon", "Portugal"],
           ["Rua do Salvador 2 B, Santa Maria Maior", "Lisbon", "Portugal"],
           ["Av. Duque Ávila, 69, Arroios", "Lisbon", "Portugal"], ["Rua Conde Redondo, 24, Santo Antonio", "Lisbon", "Portugal"],
           ["16 Rua do Conde de Redondo 16, Arroios", "Lisbon", "Portugal"],
           ["Avenida Duque de Loule, 51, Santo Antonio", "Lisbon", "Portugal"],
           ["27 Rua Maria da Fonte, Arroios", "Lisbon", "Portugal"]
          ]

user1 = User.create!(first_name: "sema",
                     last_name: "karan",
                     email: "hello.rbnb@gmail.com",
                     password: "1234test"
                     )

5.times do
  listing = Listing.new(address: address.sample,
                        # city: Faker::Address.city,
                        # country: Faker::Address.country,
                        category: ["House", "Apartment", "Guesthouse", "Cottage", "Cabin", "Yurt"].sample,
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
  listing = Listing.new(address: address.sample,
                        # city: Faker::Address.city,
                        # country: Faker::Address.country,
                        category: ["House", "Apartment", "Guesthouse", "Cottage", "Cabin", "Yurt"].sample,
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
  listing = Listing.new(address: address.sample,
                        # city: Faker::Address.city,
                        # country: Faker::Address.country,
                        category: ["House", "Apartment", "Guesthouse", "Cottage", "Cabin", "Yurt"].sample,
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
  listing = Listing.new(address: address.sample,
                        # city: Faker::Address.city,
                        # country: Faker::Address.country,
                        category: ["House", "Apartment", "Guesthouse", "Cottage", "Cabin", "Yurt"].sample,
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
