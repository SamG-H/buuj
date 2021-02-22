class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :logs
  has_many :bullets, through: :logs
end
