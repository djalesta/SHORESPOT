class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :bookings
  validates :spot_row, :spot_column, presence: true
  validates :spot_row, uniqueness: { scope: :spot_column }
  validates :spot_column, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 50 }
  validates :spot_row, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }
end
