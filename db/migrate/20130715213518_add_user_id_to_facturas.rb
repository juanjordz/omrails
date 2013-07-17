class AddUserIdToFacturas < ActiveRecord::Migration
  def change
    add_column :facturas, :user_id, :integer
    add_index :facturas, :user_id
  end
end
