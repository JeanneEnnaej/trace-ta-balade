class Walk < ApplicationRecord
  belongs_to :user
  has_many :walk_advantages
  has_many :walk_disadvantages
  has_many :advantages, through: :walk_advantages
  has_many :disadvantages, through: :walk_disadvantages
  has_many_attached :photos

  validates :title, :address, :date, presence: true
end
