class AnimeUser < ApplicationRecord
  belongs_to :anime
  belongs_to :user
end
