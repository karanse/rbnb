# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning the listings data..."
Listing.destroy_all

puts "Creating sample listing data..."
#  Columns address, category, rating, price_per_night, has_pool, has_garden, number_of_rooms

10.times do
  listing = Listing.create!(address: Faker::Address.street_address,
                            category: ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"].sample,
                            rating: rand(0..5),
                            price_per_night: rand(20..200),
                            has_pool: ["true", "false"].sample,
                            has_garden: ["true", "false"].sample,
                            number_of_rooms: rand(1..5))
  listing.save
end

puts "listings sample data created!"
