class AddColumnExternLinkWalk < ActiveRecord::Migration[7.0]
  def change
    add_column :walks, :link, :string
  end
end
