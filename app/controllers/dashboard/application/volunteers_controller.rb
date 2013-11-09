class Dashboard::Application::VolunteersController < ApplicationController
  def create
    volunteer_app = Volunteer.create!(params[:volunteer])
    if current_user.apps.none?
    	current_user.apps << volunteer_app
    end
    flash[:notice] = "A new Volunteer Application has been submitted!"
    redirect_to '/dashboard'
  end
  def index
  	@volunteers = Volunteer.all
  end
end
