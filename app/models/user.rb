class User < ActiveRecord::Base
  


  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #recoverable,
         :recoverable, :rememberable, :trackable, :validatable



  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name,  :role, :roles_mask
  # attr_accessible :title, :body


 ROLES = %w[admin usuario1 usuario2 usuario3]
 


  has_many :pin,  :dependent => :destroy


end
