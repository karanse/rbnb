class Listing < ApplicationRecord
  CATEGORIES = ["house", "apartment", "guesthouse", "cottage", "cabin", "yurt"]

  belongs_to :user
  has_many :offers
  has_many_attached :photos

  validates :address, :category, :price_per_night, :number_of_rooms, presence: true
end
