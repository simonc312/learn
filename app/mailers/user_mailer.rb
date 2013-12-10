class UserMailer < ActionMailer::Base
  default from: "learningshelter2013@sandbox6192.mailgun.org"
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject:"Thank you for signing up to the Learning Shelter!")
  end
end
