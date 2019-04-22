class User < ApplicationRecord
  has_secure_password

  has_one :profile
  
  validates_uniqueness_of :email
  validates_length_of :password, minimum: 6, maximum: 10
end
