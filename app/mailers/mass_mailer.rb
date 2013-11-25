class MassMailer < ActionMailer::Base
  default from: "learningshelter2013@sandbox6192.mailgun.org"

  def mass_email(users, subject, message)
    @msgsubject = subject
    @msgmessage = message
    @users = ''
    users.each do |user|
      @users << user.email + ', '
    end
    mail(to: @users, subject: @msgsubject, body: @msgmessage).deliver
  end
end
