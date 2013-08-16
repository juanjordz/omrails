require "paperclip"

class Factura < ActiveRecord::Base
  # attr_accessible :title, :body

    attr_accessible :serie,:folio,:formaDePago,:metodoDePago,:numCtaPago,:lugarExpedicion,:anoAprobacion,:noCertificado,:nombre_emisor,:rfc_em,:nombre_receptor,:rfc_re,:total,:subTotal, :fechaExpedicion, :usuario_id,  :concepto_attributes, :archivo

  validates :serie, :presence => true
  validates :nombre_receptor, :presence => true
  validates :nombre_emisor, :presence => true
  validates :rfc_re, :presence => true
  validates :rfc_em, :presence => true
  validates :folio, :presence => true
  validates :formaDePago, :presence => true
  validates :metodoDePago, :presence => true
  validates :numCtaPago, :presence => true
  validates :lugarExpedicion, :presence => true
  validates :anoAprobacion, :presence => true
  validates :noCertificado, :presence => true
  validates :total, :presence => true
  validates :subTotal, :presence => true
  validates :fechaExpedicion, :presence => true

 has_attached_file :archivo



  validates :usuario_id, :presence => true
 


  belongs_to :usuario
  has_many :concepto
  accepts_nested_attributes_for :concepto
end
