class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  validates :name, length: {maximum: 40}
  validates :nickname, format: { with: /\A[A-Za-z_0-9]+\z/ }, length: {maximum: 40}, presence: true, uniqueness: true
  validates :navbar_color, format: { with: /\A#[a-fA-f0-9]{3,6}\Z/ }, length: {maximum: 7}

  has_many :questions, dependent: :delete_all

  include Gravtastic
  gravtastic(secure: true, filetype: :png, size: 100, default: 'retro')

  def downcase_nickname
    nickname.downcase!
  end
end
