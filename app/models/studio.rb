class Studio < ApplicationRecord
  has_many :studio_voice_actors
  has_many :anime_studios
  has_many :studio_directors
  has_many :animes, through: :anime_studios
  has_many :directors, through: :studio_directors
  has_many :voice_actors, through: :studio_voice_actors
end
