class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  validates :name, length: {maximum: 40}
  validates :nickname, format: { with: /\A[A-Za-z_0-9]+\z/ }, length: {maximum: 40}, presence: true, uniqueness: true
  validates :nickname, format: { with: /\A#[a-fA-f0-9]{3,6}\Z/ }, length: {maximum: 7}

  has_many :questions, dependent: :delete_all

  def downcase_nickname
    nickname.downcase!
  end
end
