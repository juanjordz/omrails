class Concepto < ActiveRecord::Base
  attr_accessible :cantidad, :clave_facturas, :importe, :impuesto, :precio_unitario, :producto, :total, :unidad, :factura_id

   belongs_to :factura
end
