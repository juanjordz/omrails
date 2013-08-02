class Factura < ActiveRecord::Base
  # attr_accessible :title, :body

    attr_accessible :serie,:folio,:formaDePago,:metodoDePago,:numCtaPago,:lugarExpedicion,:anoAprobacion,:noCertificado,:nombreEmisor,:rfcEm,:nombreReceptor,:rfcRe,:total,:subTotal, :fechaExpedicion, :usuario_id

  validates :serie, :presence => true
  validates :usuario_id, :presence => true
 


  belongs_to :usuario
end
