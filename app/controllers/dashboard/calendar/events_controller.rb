class Dashboard::Calendar::EventsController < ApplicationController

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
    #render text: params[:event].inspect
    #puts "CREATE WAS CALLED-----------------------------------------------------------"
    eventhash = Hash.new()
    startDate = params[:event]['start_date']
    startTime = params[:event]['start_time']

    endDate = params[:event]['end_date']
    endTime = params[:event]['end_time']
    eventhash[:name] = params[:event][:name]
    eventhash[:description] = params[:event][:description]
    eventhash[:location] = params[:event][:location]
    eventhash[:user_id] = current_user.id
    eventhash[:color] = params[:event][:color]
    begin
    eventhash[:start_at] = DateTime.strptime(startDate+startTime,'%m/%d/%Y%l:%M %P')
    eventhash[:end_at] = DateTime.strptime(endDate+endTime,'%m/%d/%Y%l:%M %P')
    rescue ArgumentError
            flash[:notice] = "Invalid Date selected."	
	    redirect_to new_dashboard_calendar_event_path
	    return
    end

    if eventhash[:end_at] <= eventhash[:start_at]
	    flash[:notice] = "Invalid End Date selected."	
	    redirect_to new_dashboard_calendar_event_path
	    return
    end
    #puts eventhash
    @event = Event.create!(eventhash)
    flash.keep[:notice] = "#{@event.name} was successfully created."
    redirect_to dashboard_calendar_path
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
