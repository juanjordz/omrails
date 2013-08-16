class AddArchivoColumnToFacturas < ActiveRecord::Migration
  def self.up
    add_attachment :facturas, :archivo
  end

  def self.down
    remove_attachment :facturas, :archivo
  end
end
