module GetEventsHelper

  def getEventInfo
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @start_d, @end_d = Event.get_start_and_end_dates(@shown_month) 
    @events = Event.events_for_date_range(@start_d, @end_d)
    @event_strips = Event.create_event_strips(@start_d, @end_d, @events)

    return @events
  end


end