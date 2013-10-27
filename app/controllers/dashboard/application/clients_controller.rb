class Dashboard::Application::ClientsController < ApplicationController
  def create
    @client = Client.create!(params[:client])
    current_user.apps << @client
    current_user.save
    flash[:notice] = "A new Volunteer Application has been submitted!"
    redirect_to '/dashboard'
  end
  def index
  	@clients = Client.all
  end
end
