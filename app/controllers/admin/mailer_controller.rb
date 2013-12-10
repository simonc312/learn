class Admin::MailerController < ApplicationController
  def send_mail
    @subject = params[:mail][:subject]
    @body = params[:mail][:body]
    @statuses = []
    User.all_status.each do |status|
      if params[:statuses]
        if params[:statuses][status]
          @statuses << status
        end
      end
    end
    @users = User.where("status = ?", @statuses)
    if @users.empty?
      flash[:notice] = "No users selected"
      redirect_to admin_path
      return
    end
    MassMailer.mass_email(@users, @subject, @body)
    flash[:notice] = "Email sent successfully"
    redirect_to admin_path
  end
end
