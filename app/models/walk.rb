class Walk < ApplicationRecord
  belongs_to :user
  has_many :walk_advantages, dependent: :destroy
  has_many :walk_disadvantages, dependent: :destroy
  has_many :advantages, through: :walk_advantages, dependent: :destroy
  has_many :disadvantages, through: :walk_disadvantages, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  validates :title, :address, :date, presence: true
end
