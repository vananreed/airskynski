class RenterReview < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :rating, presence: true
  validate :content, presence: true
end
