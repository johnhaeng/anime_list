class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    # @animes = Anime.page(params[:page]).per(50)
    # @animes = Anime.order(:title).page(params[:page])

    # @posts = Post.page(params[:page]).per(10)


    # @animes = Anime.all
    if params[:search]
      @animes = Anime.search(params[:search]).order("created_at DESC")
    end

    if params[:sort]
      if params[:search]
        @animes = Anime.search(params[:search]).order(params[:sort].to_sym)
      else
        @animes = Anime.order(params[:sort].to_sym)
      end

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
