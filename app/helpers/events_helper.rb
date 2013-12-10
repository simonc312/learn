module EventsHelper
 def isOwner?
   @event.user_id == current_user.id
 end

 def isAdminEvent?
   User.find(@event.user_id).admin
 end
 
  def isLoggedIn?
   user_signed_in?
 end

 def displayEventTime(eventTime)
  eventTime ? eventTime.strftime('%l:%M %P') : nil
 end

 def displayEventDate(eventDate)
  eventDate ? eventDate.strftime('%m/%d/%Y') : nil
 end

 def prettifyEventDate(eventTime)
   eventTime.strftime('%A %d, %B at %l:%M %P')
 end

 def checkEvent(field)
  return @event ? @event.send(field) : nil
 end

 def checkSession(field)
  return session[:event] ? session[:event][field.parameterize.underscore.to_s] : ''
 end

 def setValue(field)
   value = checkEvent(field)
   value ||= checkSession(field)
 end

 def setTime(field)
    value = displayEventTime checkEvent(field) 
    value ||= checkSession(field.gsub("at","time"))
    value = (value== '') ? 'hh/mm am' : value   
 end

 def setDate(field)
    value = displayEventDate checkEvent(field) 
    value ||= checkSession(field.gsub("at","date"))
    value = (value== '') ? 'mm/dd/yyyy' : value    
 end
end
