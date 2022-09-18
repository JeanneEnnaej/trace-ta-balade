class DropWalks < ActiveRecord::Migration[7.0]
  def change
    drop_table :walks
  end
end
