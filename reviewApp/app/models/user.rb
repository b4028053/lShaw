class User < ApplicationRecord
  has_secure_password

  has_one :profile
  
  validates_uniqueness_of :email
end
