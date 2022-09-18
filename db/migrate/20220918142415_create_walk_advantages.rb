class CreateWalkAdvantages < ActiveRecord::Migration[7.0]
  def change
    create_table :walk_advantages do |t|
      t.references :walk, null: false, foreign_key: true
      t.references :advantage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
