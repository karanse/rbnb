class Listing < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_many_attached :photos

  validates :address, :category, :price_per_night, :has_pool, :has_garden, :number_of_rooms, presence: true
end
