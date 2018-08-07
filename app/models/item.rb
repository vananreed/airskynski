class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :item_reviews, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :price, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :photo, presence: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader
end
