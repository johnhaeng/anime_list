class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(users_params)
    redirect_to user_path(user)
  end

  private
  def users_params
    params.require(:user).permit(:name, :age, :gender, :email)
  end

end
