class Studio < ApplicationRecord
  has_many :animes
  has_many :publishers, through: :animes
  has_many :studio, through: :animes
  has_many :directors, through: :animes
  has_many :voice_actors, through: :animes
end
