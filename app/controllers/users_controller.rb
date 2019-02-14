class UsersController < ApplicationController
  before_action :authorized
  def show
    unless session[:user].nil?
      @user = User.find(session[:user])
    else
      redirect_to "/login"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to anime_path(anime)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :gender, :email)
  end
end
