class Disadvantage < ApplicationRecord
  has_many :walks, through: :walk_disadvantages

end
