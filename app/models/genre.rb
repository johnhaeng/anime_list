class Genre < ApplicationRecord
  has_many :genre_anime
  has_many :anime, through: :genre_anime

end
