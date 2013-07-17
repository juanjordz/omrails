class AddSerieToFacturas < ActiveRecord::Migration
  def change
  	add_column :facturas, :serie, :string
    add_column :facturas, :folio, :string
    add_column :facturas, :formaDePago, :string
    add_column :facturas, :metodoDePago, :string
    add_column :facturas, :numCtaPago, :int
    add_column :facturas, :lugarExpedicion, :string
    add_column :facturas, :anoAprobacion, :int
    add_column :facturas, :noCertificado, :int
    add_column :facturas, :nombreEmisor, :string
    add_column :facturas, :rfcEm, :string
    add_column :facturas, :nombreReceptor, :string
    add_column :facturas, :rfcRe, :string
    add_column :facturas, :total, :int
    add_column :facturas, :subTotal, :int
  end
end
