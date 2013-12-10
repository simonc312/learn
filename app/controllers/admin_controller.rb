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

  def acceptClient
    client = Client.find(params[:id])
    user = client.user
    if client.accepted
      client.update_attributes(:accepted => false)
      user.update_attributes(:status => 'client_candidate')
    else
      client.update_attributes(:accepted => true)
      user.update_attributes(:status => 'client')
    end
    redirect_to '/admin/#clients'
  end

  def acceptVol
    vol = Volunteer.find(params[:id])
    user = vol.user
    if vol.accepted
      vol.update_attributes(:accepted => false)
      user.update_attributes(:status => 'volunteer_candidate')
    else
      vol.update_attributes(:accepted => true)
      user.update_attributes(:status => 'volunteer')
    end
    redirect_to '/admin/#volunteers'
  end
  

end
