class Walk < ApplicationRecord
  belongs_to :user
  has_many :advantages, through: :walk_advantage
  has_many :disadvantages, through: :walk_disadvantage
  has_many_attached :photos

  validates :title, :address, :date, presence: true
end
