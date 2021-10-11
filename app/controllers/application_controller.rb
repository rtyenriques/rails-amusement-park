class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # helper_method :current_user

  # def current_user
  #   return unless session[:user_id]
  #   @current_user ||= User.find(session[:user_id])
  # end

  # def require_user 
  #  redirect_to '/login' unless current_user 
  # end
  helper_method :logged_in?, :current_user

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to '/' unless logged_in?
  end
end
