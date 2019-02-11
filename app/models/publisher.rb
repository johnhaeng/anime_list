class Publisher < ApplicationRecord
  has_many :anime_publishers
  has_many :animes, through: :anime_publishers
end
