class Admin::Calendar::EventsController < ApplicationController
  include EventHashHelper
	def edit
		@event = Event.find(params[:id])
	end
	
	def new
	end

  def show
    @event = Event.find(params[:id])
    if request.xhr?
     	render :partial => 'show', :object=> @event 
    end
  end

  def create
    self.setNewPaths
    self.updateSessionParams
    @eventhash = self.setUpEventHash
    if(self.validate)
      self.createEvent
    end
  end

  def update
    @event = Event.find params[:id]
    self.setEditPaths
    self.updateSessionParams
    @eventhash = self.setUpEventHash
    if(self.validate)
      @event.update_attributes!(@eventhash)
    flash[:notice] = "#{@event.name} was successfully updated."
    redirect_to admin_calendar_event_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "event '#{@event.name}' deleted."
    redirect_to admin_calendar_path
  end
	
end
