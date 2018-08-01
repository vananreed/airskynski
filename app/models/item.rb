class Item < ApplicationRecord
  belongs_to :user
  has_many :item_reviews, through: :bookings
end
