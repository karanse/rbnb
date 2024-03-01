class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :listings
  has_many :offers
  has_many :received_offers, through: :listings, source: :offers

  validates :first_name, :last_name, presence: true
end
