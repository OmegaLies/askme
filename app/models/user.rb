class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, confirmation: true
  validates :name, length: {maximum: 40}
  validates :nickname, format: { with: /\A[a-z_]+\z/ }, uniqueness: true
end
