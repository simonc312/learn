class UserMailer < ActionMailer::Base
  default from: "learningshelter2013@gmail.com"
  def welcome_email(user)
    @user = user
    mail(to: @user.email, cc:'zealotjin@gmail.com', subject:"Thank you for signing up to the Learning Shelter!")

  end
end
