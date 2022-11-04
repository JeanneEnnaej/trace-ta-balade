class Advantage < ApplicationRecord
  has_many :walk_advantages, dependent: :destroy
  has_many :walks, through: :walk_advantages, dependent: :destroy

end
