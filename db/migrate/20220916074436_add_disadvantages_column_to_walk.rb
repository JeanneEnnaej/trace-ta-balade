class AddDisadvantagesColumnToWalk < ActiveRecord::Migration[7.0]
  def change
    add_column :walks, :disadvantages, :string, array: true, default: []
  end
end
