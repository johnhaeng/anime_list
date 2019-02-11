class AnimeStudio < ApplicationRecord
  belongs_to :studio
  belongs_to :anime
end
