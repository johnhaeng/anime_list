class User < ApplicationRecord
  has_secure_password
  has_many :anime_users
  has_many :animes, through: :anime_users
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true
  validates :gender, presence: true

end
