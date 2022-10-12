class Apartment < ApplicationRecord
  validates :apartment_name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :review, presence: true
  validates :room_size, presence: true

  scope :filter_by_starts_with, -> (location) { where("location like ?", "#{location}%")}

end
