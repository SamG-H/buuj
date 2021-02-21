class User < ApplicationRecord
  has_secure_password
  has_many :logs
  has_many :bullets, through: :logs
end
