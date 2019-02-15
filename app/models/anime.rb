class Anime < ApplicationRecord
  belongs_to :studio
  belongs_to :director
  has_many :voice_actor_animes
  has_many :voice_actors, through: :voice_actor_animes
  has_many :anime_users
  has_many :users, through: :anime_users
  has_many :genre_anime
  has_many :genres, through: :genre_anime


  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
  end
  def self.page(page_num, sort = :none)
    first = 0
    last = 49
    unless page_num == 1
      page_num.times do
        first += 50
        last += 50
      end
    end
    unless sort == :none
      genre = Genre.find_by(id: sort.to_i)
      genre.anime[first..last]
    else
      Anime.all[first..last]
    end
  end
  def score
    score = 0
    counter = 0
    self.anime_users.each do |scorer|
      if scorer.rating.nil?
        next
      else
        count += 1
        score += rating
      end
    end
    if score != 0
      score/=count
    end
    score
  end

end
