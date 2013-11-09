class Dashboard::Application::ClientsController < ApplicationController
  def create
    client_app = Client.create!(params[:client])
    if current_user.apps.none?
    	current_user.apps << client_app
    end
    flash[:notice] = "A new Client Application has been submitted!"
    redirect_to '/dashboard'
  end
  def index
  	@clients = Client.all
  end
end
