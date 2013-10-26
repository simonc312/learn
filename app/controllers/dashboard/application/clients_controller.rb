class Dashboard::Application::ClientsController < ApplicationController
  def create
    Client.create!(params[:client])
    flash[:notice] = "NEW APPLICATION"
    redirect_to '/'
  end
  def index
  	@client = Client.all

  end
end
