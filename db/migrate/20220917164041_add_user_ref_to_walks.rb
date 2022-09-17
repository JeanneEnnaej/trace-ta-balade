class AddUserRefToWalks < ActiveRecord::Migration[7.0]
  def change
    add_reference :walks, :user, null: false, foreign_key: true
  end
end
