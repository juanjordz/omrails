class Factura < ActiveRecord::Base
  # attr_accessible :title, :body

    attr_accessible :serie,:folio,:formaDePago,:metodoDePago,:numCtaPago,:lugarExpedicion,:anoAprobacion,:noCertificado,:nombreEmisor,:rfcEm,:nombreReceptor,:rfcRe,:total,:subTotal

  validates :serie, :presence => true
  validates :user_id, :presence => true
 


  belongs_to :user
end
