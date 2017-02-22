class Offer < ApplicationRecord
  belongs_to :user_id
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
