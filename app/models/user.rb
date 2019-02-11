class User < ApplicationRecord
  has_many :anime_users
  has_many :animes, through: :anime_users
end
