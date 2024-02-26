class User < ApplicationRecord
  has_many :listings
  has_many :offers

  validates :first_name, :last_name, presence: true
end
