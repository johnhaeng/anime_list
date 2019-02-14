class SessionsController < ApplicationController

  def new
    @user = User.new
  end
  def login
    
  end

  def sign
    user = User.find_by(email: params[:email])
    authenticated = user.try(:authenticate, params[:password])
    if authenticated
      @user = user
      session[:user] = @user.id
      redirect_to user_path(user)
    else
      flash[:error] = "INVALID LOGIN"
      render :login
    end
  end

  def create
    flash[:error] = nil
    user = User.create(user_params)
    if user.valid?
      session[:user] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "INVALID LOGIN"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :gender, :email, :password)
  end
end
