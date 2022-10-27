class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.string :title
      t.integer :num_km
      t.integer :duration
      t.integer :rating
      t.string :address
      t.date :date
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
