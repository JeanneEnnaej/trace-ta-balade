class CreateWalkDisadvantages < ActiveRecord::Migration[7.0]
  def change
    create_table :walk_disadvantages do |t|
      t.references :walk, null: false, foreign_key: true
      t.references :disadvantage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
