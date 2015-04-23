class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action  :authenticate
  helper_method :current_user, :signed_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_admin_user!
    if !current_user.admin

      redirect_to root_path

    end
  end



  def signed_in?
     true if current_user.present?
  end

  def authenticate
    if current_user.present?
      true
    else
      flash[:warning] = 'Sorry! You must be signed in to continue.'
    redirect_to root_path

    end
  end
end
