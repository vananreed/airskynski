class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one :item_review, dependent: :destroy

  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
