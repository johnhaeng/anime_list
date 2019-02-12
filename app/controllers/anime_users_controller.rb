class AnimeUsersController < ApplicationController
  def new
    @anime_user = AnimeUser.new
    render :new
  end

  def create
    anime_user = AnimeUser.create(anime_user_params)

    redirect_to user_path(anime_user)
  end

  private
  def anime_user_params
    params.require(:anime_user).permit(:user_id, :anime_id)
  end

end
