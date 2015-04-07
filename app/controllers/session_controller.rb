class SessionController < ApplicationController

  skip_before_action :authenticate, only: [:welcome, :signin_entry, :signin, :signup, :signup_entry]

  def index

  end


  def welcome

  end

  def signup
  end

  def signup_entry
    user = User.new(user_params)

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
      session[:user_id] = user.id
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

  private

  def user_params

    # params[:user].permit(:name, :email,  :password, :password_confirmation, :user_name)

  end


end
