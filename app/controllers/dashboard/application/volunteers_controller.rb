class Dashboard::Application::VolunteersController < ApplicationController
  def create
    Volunteer.create!(params[:volunteer])
    flash[:notice] = "NEW APPLICATION"
    redirect_to '/'
  end
  def index
  	@apps = Volunteer.all
  end
end
