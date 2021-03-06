class Admin::MailerController < ApplicationController
  def send_mail
    @subject = params[:mail][:subject]
    @body = params[:mail][:body]
    @statuses = []
    User.all_status.each {|status|
      if params[:statuses]
        if params[:statuses][status]
          @statuses << status
        end
      end
    }
    @users = User.where("status IN (:statuses)", {:statuses => @statuses})
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
