class UserMailer < ApplicationMailer
  default from: 'hga813@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://google.com'
    mail(to: @user.email, subject: 'Welcome to Giftgarage!')
  end
end
