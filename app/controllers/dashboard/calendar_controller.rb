class Dashboard::CalendarController < ApplicationController
    
  include EventGetter
  def index
    @events = getEventInfo
    @events.reject! { |event|
      not (isAdminEvent?(event) or isOwner?(event))
    }
    @event_strips = Event.create_event_strips(@start_d, @end_d, @events)
    #@event_strips = Event.event_strips_for_month(@shown_month, :conditions => ['user_id = ?', current_user.id ])

    #@events = Event.all
    
  end
  
end
