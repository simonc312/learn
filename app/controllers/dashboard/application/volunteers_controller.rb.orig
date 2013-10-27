class Dashboard::Application::VolunteersController < ApplicationController
  def create
    Volunteer.create!(params[:volunteer])
    flash[:notice] = "A new Volunteer Application has been submitted!"
    redirect_to '/dashboard'
  end
  def index
<<<<<<< HEAD
  	@volunteers = Volunteer.all
=======
  	@voluneers = Volunteer.all
>>>>>>> 6b9379cc8db4bc1a98ea8200a22493d7e6231371
  end
end
