class UserMailer < ApplicationMailer
  default from: 'pixelgoo@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Добро пожаловать на MarsTracker')
  end
end
