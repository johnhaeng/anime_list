class AnimeUsersController < ApplicationController
  before_action :authorized
  def show
    @animes = User.find_by(id: session[:user]).animes
    if params[:sort]
      if params[:search]
        @animes = @animes.search(params[:search]).order(params[:sort].to_sym)
      else
        @animes = @animes.order(params[:sort].to_sym)
      end
    else
      if params[:search]
        @animes = @animes.search(params[:search]).order(:title)
      else
        @animes = @animes.order(:title)
      end
    end
    render "anime_users/show.html.erb"
  end
end
