class User < ActiveRecord::Base
  


  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #recoverable,
         :recoverable, :rememberable, :trackable, :validatable



  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :role, :company_id
  # attr_accessible :title, :body

 	ROLES = %w[admin usuario]
 


  has_many :pin,  :dependent => :destroy

  belongs_to :company
  validates :company_id, :presence => true


end
