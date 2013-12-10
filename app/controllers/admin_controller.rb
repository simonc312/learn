class AdminController < ApplicationController

	
	before_filter :authenticate_admin!
  def index
  	@users = User.all
  	@clients = Client.all
  	@volunteers = Volunteer.all
  end

  def send_email(subject, message)
    mass_email(User.all, subject, message)
    flash[:notice] = "Email sent"
    redirect_to '/dashboard'
  end

  def accepted
    redirect_to '/dashboard'
    flash[:notice] = "HIHIHIHIHIH"
  end
  

end
