class Anime < ApplicationRecord
  has_many :anime_publishers
  has_many :anime_studios
  has_many :anime_users
  has_many :publishers, through: :anime_publishers
  has_many :studios, through: :anime_studios
  has_many :users, through: :anime_users
end
