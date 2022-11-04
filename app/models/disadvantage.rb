class Disadvantage < ApplicationRecord
  has_many :walk_disadvantages, dependent: :destroy
  has_many :walks, through: :walk_disadvantages, dependent: :destroy
end
