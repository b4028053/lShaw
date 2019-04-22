class SessionsController < ApplicationController
  def index
    #@profile=Profile.find(params[:user_id])
  	redirect_to root_path
  end

  def new
  end

  def create
  	user=User.find_by_userid(params[:userid])
    profile=Profile.find_by(users_id: user.id)

  	if user && user.authenticate(params[ :password])
  		session[:user_id]=user.id
      session[:username]=user.userid
      session[:user]=user

      if profile.nil?
      	redirect_to new_profile_path
        #, notice:
        #{}"#{user.userid}'s profile"
      else
        session[:profile_id]=profile.id
        
        redirect_to profile_path(profile)
        #, notice:
      	#{}"Welcome #{user.userid}, you are now logged in"
      end
  	else
  		render 'new', alert:
  		"Invalid username and/or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
    #, notice:
  	#{}"You have successfully logged out"
  end
end
