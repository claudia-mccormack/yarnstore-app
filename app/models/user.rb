class User < ActiveRecord::Base
  has_secure_password
  has_many :carted_yarns
  has_many :orders, through: :carted_yarns



end
