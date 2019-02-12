class Publisher < ApplicationRecord
  has_many :animes
  has_many :studios, through: :animes
end
