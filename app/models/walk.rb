class Walk < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, :address, :date, presence: true
end
