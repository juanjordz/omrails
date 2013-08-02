class Empresa < ActiveRecord::Base
  	attr_accessible :name, :rfc

    validates :name, :presence => true
    validates  :name, :uniqueness => true

 	has_many :usuarios,  :dependent => :destroy
end
