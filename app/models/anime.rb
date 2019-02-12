class Anime < ApplicationRecord
  belongs_to :publisher
  belongs_to :studio
  belongs_to :director
  has_many :voice_actor_anime
  has_many :voice_actor, through: :voice_actor_anime
  has_many :anime_users
  has_many :users, through: :anime_users
  has_many :genre_anime
  has_many :genres, through: :genre_anime
end
