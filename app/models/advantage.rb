class Advantage < ApplicationRecord
  has_many :walks, through: :walk_advantages
end
