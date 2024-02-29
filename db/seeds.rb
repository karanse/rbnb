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

address = ["Prinsengracht 328 - 332", "'s-Gravesandestraat 55", "Valkenburgerstraat 14",
           "Jan Luykenstraat 58", "Sarphatistraat 47", "Nieuwe Doelenstraat 24",
           "Via dei Prefetti 19,", "Via M. Dionigi 16", "Via Dei Pettinari 6", "Via XXIV Maggio 7",
           "Via Dei Serpenti 109-110", "Viale di Trastevere 60", "Viale Glorioso 14", "Via Degli Orti Di Trastevere 3",
           "Josep Anselm Clavé, 27, Ciutat Vella", "Avenida Marques de Argentera, 11, Ciutat Vella",
           "Pelai, 22-24, Ciutat Vella", "Poeta Cabanyes, 5, Sants-Montjuïc", "Carrer Girona, 176, Eixample",
           "Avenida Paral.lel, 64, Ciutat Vella", "2 Bd Garibaldi", "4 Rue Des Innocents", "37 Boulevard Richard Lenoir",
           "5 rue Tholoze", "15 rue Edouard Manet", "17 boulevard Kellermann", "157 Waterloo Road, Lambeth",
           "1 Addington Street, Lambeth", "372 Strand, Westminster Borough", "38-51 Bedford Way, Camden",
           "45 Prescot Street, Tower Hamlets", "35 Ixworth Place, Kensington and Chelsea",
           "Rua Portas De Santo Antão 99, Santa Maria Maior", "1 Rua Manuel Jesus Coelho, Santo Antonio",
           "Rua Augusta, 220 , Santa Maria Maior", "Rua Nova do Carvalho, 15, Misericordia", "Rua do Salvador 2 B, Santa Maria Maior",
           "Av. Duque Ávila, 69, Arroios", "Rua Conde Redondo, 24, Santo Antonio", "16 Rua do Conde de Redondo 16, Arroios",
           "Avenida Duque de Loule, 51, Santo Antonio", "27 Rua Maria da Fonte, Arroios"
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
