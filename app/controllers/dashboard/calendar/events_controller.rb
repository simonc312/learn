class Dashboard::Calendar::EventsController < ApplicationController
  include EventHashHelper
  def edit
    @event = Event.find(params[:id])
  end

  def new
    self.fillFields
  end

  def show
    @event = Event.find(params[:id])
    if request.xhr?
      render :partial => 'show', :object=> @event 
    end
  end

  def create
    self.updateSessionParams
    eventhash = self.setUpEventHash
    self.validate(eventhash)
  end

  def update
    @event = Event.find params[:id]
    @event.update_attributes!(params[:event])
    flash[:notice] = "#{@event.name} was successfully updated."
    redirect_to dashboard_calendar_event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "event '#{@event.name}' deleted."
    redirect_to dashboard_calendar_path
  end
  
end
