class AddStatusToWalks < ActiveRecord::Migration[7.0]
  def change
    add_column :walks, :status, :string
  end
end
