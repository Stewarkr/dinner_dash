class User < ActiveRecord::Base
  
  
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
  
  # ------------ Associations
  
  has_many :orders
  
  
  # -------------------------------------- Validations
  
  validates_presence_of :name, :email
  validates_uniqueness_of :email, case_sensitive: false
end
