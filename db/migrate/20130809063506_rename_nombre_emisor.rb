class RenameNombreEmisor < ActiveRecord::Migration
  def self.up
    rename_column :facturas, :nombreEmisor, :nombre_emisor
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
