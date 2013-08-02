class RenameUseridToFacturas < ActiveRecord::Migration
  def self.up
    rename_column :facturas, :user_id, :usuario_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
