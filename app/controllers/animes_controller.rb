class AnimesController < ApplicationController

  def index
    @animes = Anime.all.order(:title).page params[:page]
    # @animes = Anime.all
    if params[:search]
      @animes = Anime.search(params[:search]).order("created_at DESC")
    else
      @animes = Anime.all
    end
  end

  def show
    @anime = Anime.find(params[:id])
  end


end
