class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
 
#Metodo helper para lograr tener al usuario actual y poder usarlo en la vista. 
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
