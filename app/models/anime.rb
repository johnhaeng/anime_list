class Anime < ApplicationRecord
  belongs_to :publisher
  belongs_to :studio
  belongs_to :director
  belongs_to :voice_actor
  has_many :anime_users
  has_many :users, through: :anime_users
  has_many :genre_anime
  has_many :genres, through: :genre_anime
end
