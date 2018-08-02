class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :item_reviews, through: :bookings

  validates :price, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :photo, presence: true
  validates :address, presence: true
end
