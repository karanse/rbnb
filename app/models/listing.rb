class Listing < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :address, :category, :price_per_night, :has_pool, :has_garden, :number_of_rooms, presence: true
end
