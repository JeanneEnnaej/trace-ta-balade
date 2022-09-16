class AddAdvantagesColumnToWalk < ActiveRecord::Migration[7.0]
  def change
    add_column :walks, :advantages, :string, array: true, default: []
  end
end
