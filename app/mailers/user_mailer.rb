class UserMailer < ApplicationMailer
  default from: 'notifications@pure-garden-7046.herokuapp.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://pure-garden-7046.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to Giftgarage!')
  end
end
