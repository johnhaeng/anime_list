class Genre < ApplicationRecord
  has_many :genre_animes
  has_many :anime, through: :genre_anime

end
