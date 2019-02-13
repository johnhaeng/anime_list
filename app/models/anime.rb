class Anime < ApplicationRecord
  belongs_to :studio
  belongs_to :director
  has_many :voice_actor_animes
  has_many :voice_actors, through: :voice_actor_animes
  has_many :anime_users
  has_many :users, through: :anime_users
  has_many :genre_anime
  has_many :genres, through: :genre_anime
end
