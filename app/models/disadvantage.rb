class Disadvantage < ApplicationRecord
  has_many :walks, through: :walk_disadvantage

end
