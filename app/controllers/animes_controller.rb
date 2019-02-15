class AnimesController < ApplicationController
  def index
    if session[:page].nil?
      session[:page] = 1
    end
    @animes = Anime.all
    if params[:Anime]
      if params[:search]
        @animes = Anime.search(params[:search]).order(params[:sort].to_sym)
      else
        @genre = Genre.find_by(id: genre[:Genre])
        @animes = Anime.page(session[:page], genre[:Genre])
      end
    else
      if params[:search]
        @animes = Anime.search(params[:search]).order(:title)
      else
        @animes = Anime.page(session[:page])
      end
    end
  end
  def next
    session[:page] += 1
    redirect_to "/animes"
  end
  def back
    session[:page] -= 1
    redirect_to "/animes"
  end

  def show
    @anime = Anime.find(params[:id])
  end
  private
  def genre
    params.require(:Anime).permit(:Genre)
  end
end
