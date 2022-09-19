class Advantage < ApplicationRecord
  has_many :walks, through: :walk_advantages, dependent: :destroy
end
