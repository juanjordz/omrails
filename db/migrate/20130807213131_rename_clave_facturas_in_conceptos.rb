class RenameClaveFacturasInConceptos < ActiveRecord::Migration
  def self.up
    rename_column :conceptos, :clave_facturas, :factura_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
