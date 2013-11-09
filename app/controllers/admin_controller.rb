class AdminController < ApplicationController

	
	before_filter :authenticate_admin!
  def index
  	@users = User.all
  	@clients = Client.all
  	@volunteers = Volunteer.all
  end

  def authenticate_admin!
  	if current_user.admin?
    	
    else
      flash[:notice] = "You do not have the authorization to access this page"
      redirect_to '/dashboard'
    end
  end
  

end
