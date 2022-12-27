class CreateWalkReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :walk_reviews do |t|
      t.text :content
      t.references :walk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
