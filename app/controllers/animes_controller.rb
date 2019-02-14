class AnimesController < ApplicationController
  def index
<<<<<<< HEAD
    @animes = Anime.all
    # @animes = Anime.all
    if params[:search]
      @animes = Anime.search(params[:search]).order("created_at DESC")
=======
    if params[:sort]
      if params[:search]
        @animes = Anime.search(params[:search]).order(params[:sort].to_sym)
      else
        @animes = Anime.order(params[:sort].to_sym)
      end
>>>>>>> jesus
    else
      if params[:search]
        @animes = Anime.search(params[:search]).order(:title)
      else
        @animes = Anime.order(:title)
      end
    end
  end

  def show
    @anime = Anime.find(params[:id])
  end
end
