class EventsController < ApplicationController

	def edit
		@event = Event.find(params[:id])
	end
	
	def new

	end

  def create
    eventhash = Hash.new()
    startDate = params[:event][:start_date]
    endDate = params[:event][:end_date]
    startTime = params[:event][:start_time]
    endTime = params[:event][:end_time]
    eventhash[:name] = params[:event][:title]
    eventhash[:description] = params[:event][:description]
    eventhash[:location] = params[:event][:location]

    eventhash[:start_at] = DateTime.new(startDate.year, startDate.month, startDate.day, startTime.hour, startTime.min)
    eventhash[:end_at] = DateTime.new(endDate.year, endDate.month, endDate.day, endTime.hour, endTime.min)

    @event = Event.create!(eventhash[:event])

    flash[:notice] = "#{@event.name} was successfully created."
    redirect_to calendar_path
  end


	
end
