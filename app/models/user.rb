class User < ApplicationRecord
  has_many :messages
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 20 }
  has_secure_password
end
