class Dashboard::Application::VolunteersController < ApplicationController
  def create
    volunteer_app = Volunteer.create!(params[:volunteer])
    if current_user.apps.none?
    	current_user.apps << volunteer_app
      flash[:notice] = "A new Volunteer Application has been submitted!"
      redirect_to '/dashboard'
    else
      flash[:notice] = "You have already submitted a Volunteer Application."
      redirect_to '/dashboard'
    end
    
  end
  def index
  	@volunteers = Volunteer.all
  end
end
