class Dashboard::Application::ClientsController < ApplicationController
  def create
    @client = Client.create!(params[:client])
    current_user.apps << @client
    current_user.save
    flash[:notice] = "NEW APPLICATION"
    redirect_to '/'
  end
  def index
  	@clients = Client.all

  end
end
