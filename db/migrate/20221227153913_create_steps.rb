class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.references :walk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
