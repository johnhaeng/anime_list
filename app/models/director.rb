class Director < ApplicationRecord
  has_many :studio_directors
  has_many :studios, through: :studio_directors
end
