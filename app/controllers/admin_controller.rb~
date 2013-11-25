class AdminController < ApplicationController

	
	before_filter :authenticate_admin!
  def index
  	@users = User.all
  	@clients = Client.all
  	@volunteers = Volunteer.all
  end

  def authenticate_admin!
  	if current_user.try(:admin?)
      #do nothing
    else
      flash[:notice] = "You do not have the authorization to access this page"
      redirect_to '/dashboard'
    end
  end

  def send_email(subject, message)
    mass_email(User.all, subject, message)
    flash[:notice] = "Email sent"
    redirect_to '/dashboard'
  end
  

end
