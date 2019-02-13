class ApplicationController < ActionController::Base
  def current_user
    if session[:user]
      @current_user = User.find(session[:user])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to "/login" unless logged_in?
  end
end
