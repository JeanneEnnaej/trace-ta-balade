class AddRatingInWalkReview < ActiveRecord::Migration[7.0]
  def change
    add_column :walk_reviews, :rating, :integer
  end
end
