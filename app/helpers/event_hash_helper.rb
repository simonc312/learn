module EventHashHelper

  def updateSessionParams
    session[:event] = params[:event]
  end
  def resetSession 
    session[:event] = nil
  end
  #this method fills the fields for event form if there are session params not empty
  def fillFields
  
  end
  def setUpEventHash
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
	    return false 
    end
  return eventhash
  end

  def validate(eventhash)
    new_event_path = current_user.admin? ? new_admin_calendar_event_path : new_dashboard_calendar_event_path
    calendar_path = current_user.admin? ? admin_calendar_path : dashboard_calendar_path 
    if (!eventhash)
      flash[:notice] = "Invalid Date selected."
      redirect_to new_event_path
      return
    end

    if eventhash[:end_at] <= eventhash[:start_at]
      flash[:notice] = "Invalid End Date selected."  
      redirect_to new_event_path
      return
    end
    @event = Event.create!(eventhash)
    #reset session on successful create 
    resetSession
    flash.keep[:notice] = "#{@event.name} was successfully created."
    redirect_to calendar_path
  end 

end
