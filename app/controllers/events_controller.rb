class EventsController < ApplicationController

	def edit
		@event = Event.find(params[:id])
	end
	
	def new
		
	end

  def create
    @event = Event.create!(params[:event])
    flash[:notice] = "#{@event.title} was successfully created."
    redirect_to calendar_path
  end


	
end
