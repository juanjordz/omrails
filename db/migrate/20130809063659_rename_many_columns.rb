class RenameManyColumns < ActiveRecord::Migration
  def self.up
    rename_column :facturas, :rfcEm, :rfc_em
    rename_column :facturas, :nombreReceptor, :nombre_receptor
    rename_column :facturas, :rfcRe, :rfc_re

  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
