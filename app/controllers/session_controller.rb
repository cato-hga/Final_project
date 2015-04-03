class SessionController < ApplicationController
  def index

  end


  def welcome

  end

  def signup
    @user = User.new
  end
  def signup_entry
    user = User.new(name: params[:name], email: params[:email], password: params[:password])

    if user.save
      session[:user_id] = user.id
      flash[:notice] = "You have successfully signed up."
    else
      flash[:error] = "We were unable to sign you in with those credentials."
    end
    redirect_to root_path
  end

  def signin
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user_id
      flash[:notice] = "You have been signed in!"
    else
      flash[:warning] = "Unable to sign you in with those credentials"
    end
    redirect_to root_path
end

def signout
  session[:user_id] = nil
  flash[:notice] = "You are signed out!"
  redirect_to root_path
end
end
