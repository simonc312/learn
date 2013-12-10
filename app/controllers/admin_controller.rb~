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
    # if client.accepted
    #   client.update_attributes(:accepted => false)
    #   user.update_attributes(:status => 'client_candidate')
    # else
    #   client.update_attributes(:accepted => true)
    #   user.update_attributes(:status => 'client')
    # end
    acceptApp(client, user)
    redirect_to '/admin/#clients'
  end

  def acceptVol
    vol = Volunteer.find(params[:id])
    user = vol.user
    # if vol.accepted
    #   vol.update_attributes(:accepted => false)
    #   user.update_attributes(:status => 'volunteer_candidate')
    # else
    #   vol.update_attributes(:accepted => true)
    #   user.update_attributes(:status => 'volunteer')
    # end
    acceptApp(vol, user)
    redirect_to '/admin/#volunteers'
  end

  def acceptApp(app, user)
    app = app
    user = user
    type = app.type
    if app.accepted
      app.update_attributes(:accepted => false)
      case type
      when "Volunteer"
        user.update_attributes(:status => 'volunteer_candidate')
      when "Client"
        user.update_attributes(:status => 'client_candidate')
      end
    else
      app.update_attributes(:accepted => true)
      case type
      when "Volunteer"
        user.update_attributes(:status => 'volunteer')
      when "Client"
        user.update_attributes(:status => 'client')
      end
    end
  end
end
