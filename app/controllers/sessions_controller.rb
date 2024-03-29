class SessionsController < ApplicationController

skip_before_filter :require_login, :only => [:new, :create]  

  def new
  end

  #Funcion para log in del user
  def create
    user = User.authenticate(params[:email], params[:password])
	if user
	  session[:user_id] = user.id
	  redirect_to root_url, :notice => "Logged in!"
	else
	  flash.now.alert = "Invalid email or password"
	  render "new"
	end
  end
  
  #Funcion para el log out del user
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

	
end
