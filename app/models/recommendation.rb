class Recommendation < ApplicationRecord
  # belongs_to :user
  has_many :swipes, through: :user
  geocoded_by :latitude
  after_validation :geocode, if: :latitude_changed?
end
