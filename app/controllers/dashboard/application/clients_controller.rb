class Dashboard::Application::ClientsController < ApplicationController
  def create
    client_app = Client.create!(params[:client])
    if current_user.apps.none?
    	current_user.apps << client_app
      flash[:notice] = "A new Client Application has been submitted!"
      redirect_to '/dashboard'
    else
      flash[:notice] = "You have already submitted a Client Application."
      redirect_to '/dashboard'
    end
    
  end
  def index
  	@clients = Client.all
  end
end
