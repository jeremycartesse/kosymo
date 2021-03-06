class Offer < ApplicationRecord
  has_attachments :photos, maximum: 10
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  ROOM_NUMBER = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  BEDROOM_NUMBER = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  CITY_EX = ["", "Paris", "Nice", "Cannes", "Monaco", "Montcuq", "Marseille"]
  GOOD_TYPE = ["Appartment", "Floor", "House", "Building", "Commercial premises", "Parking"]
  belongs_to :user

  validates :name, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :description,presence: true
  validates :surface,presence: true
  validates :room_number, inclusion: { in: Offer::ROOM_NUMBER }
  validates :bedroom_number, inclusion: { in: Offer::BEDROOM_NUMBER }
  validates :good_type, inclusion: { in: Offer::GOOD_TYPE }

end
