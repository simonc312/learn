class Admin::MailerController < ApplicationController

  def send_mail
    @subject = params[:mail][:subject]
    @body = params[:mail][:body]
    @users = User.all
    MassMailer.mass_email(@users, @subject, @body)
    flash[:notice] = "Email sent successfully"
    redirect_to admin_path
  end
end
