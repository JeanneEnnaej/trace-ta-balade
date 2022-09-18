class Advantage < ApplicationRecord
  has_many :walks, through: :walk_advantage
end
