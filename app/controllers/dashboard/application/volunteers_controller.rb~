class Dashboard::Application::VolunteersController < ApplicationController
  def create
    Volunteer.create!(params[:volunteer])
    flash[:notice] = "A new Volunteer Application has been submitted!"
    redirect_to '/dashboard'
  end
  def index
  	@volunteers = Volunteer.all
  end
end
