class Walk < ApplicationRecord
  belongs_to :user
  has_many :walk_advantages, dependent: :destroy
  has_many :walk_disadvantages, dependent: :destroy
  has_many :advantages, through: :walk_advantages, dependent: :destroy
  has_many :disadvantages, through: :walk_disadvantages, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :title, :address, presence: true
  validates :photos, limit: { min: 0, max: 3 }
  validates :photos, attached: true, content_type: [:png, :jpg, :jpeg]
  validates :photos, attached: true, size: { between: 1.kilobyte..10.megabytes }
  validates :content, length: { maximum: 900 }
end
