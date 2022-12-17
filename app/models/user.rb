class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, presence: true, uniqueness: true, confirmation: true
  validates :name, length: {maximum: 40}
  validates :nickname, format: { with: /\A[A-Za-z_0-9]+\z/ }, uniqueness: true

  def downcase_nickname
    nickname.downcase!
  end
end
