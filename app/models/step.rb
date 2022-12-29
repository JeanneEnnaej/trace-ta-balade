class Step < ApplicationRecord
  belongs_to :walk

  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
