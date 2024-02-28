class Listing < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :category, :price_per_night, :number_of_rooms, presence: true
end
