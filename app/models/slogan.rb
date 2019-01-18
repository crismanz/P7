class Slogan < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true
  validates :slogan, presence: true, length: { maximum: 50 }
  before_save { self.email = email.downcase }
end
