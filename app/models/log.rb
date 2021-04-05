class Log < ApplicationRecord
  belongs_to :user
  has_many :bullets, dependent: :destroy
end
