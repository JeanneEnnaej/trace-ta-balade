class Walk < ApplicationRecord
  belongs_to :user
  has_many :walk_advantages, dependent: :destroy
  has_many :walk_disadvantages, dependent: :destroy
  has_many :advantages, through: :walk_advantages, dependent: :destroy
  has_many :disadvantages, through: :walk_disadvantages, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  validates :title, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
