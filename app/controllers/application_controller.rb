class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user
  helper_method :current_user, :signed_in?

  def current_user
    @current_user = User.find_by(id:11)
  end

  def signed_in?
     true if current_user.present?
  end

  def authenticate
    if current_user
      true
    else
      flash[:warning] = 'You must be signed in.'
    redirect_to root_path

    end
  end
end
