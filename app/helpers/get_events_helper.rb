module GetEventsHelper

  def getEvents
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @start_d, @end_d = Event.get_start_and_end_dates(@shown_month) 
    @events = Event.events_for_date_range(@start_d, @end_d)
    if !current_user.admin?
      @events.reject! { |event| not (isAdminEvent?(event) or isOwner?(event)) }
    end
    @event_strips = Event.create_event_strips(@start_d, @end_d, @events)
  end


end
