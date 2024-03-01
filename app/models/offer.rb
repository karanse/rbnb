class Offer < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  has_many_attached :photos
end
