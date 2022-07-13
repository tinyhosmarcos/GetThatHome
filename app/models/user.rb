class User < ApplicationRecord
  has_many :properties, dependent: :destroy
  has_secure_token
  has_secure_password
end
