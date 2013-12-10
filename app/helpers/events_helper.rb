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
  eventTime || (eventTime == "") ? eventTime.strftime('%l:%M %P') : 'hh/mm am'
 end

 def displayEventDate(eventDate)
  eventDate || (eventDate == "") ? eventDate.strftime('%m/%d/%Y') : 'mm/dd/yyyy'
 end

 def prettifyEventDate(eventTime)
   eventTime.strftime('%A %d, %B at %l:%M %P')
 end

 def checkEvent(field)
  return @event ? @event.send(field) : ""
 end

 def checkSession(field)
  return session[:event] ? session[:event][field.parameterize.underscore.to_s] : nil
 end

 def setValue(field)
   value = checkSession(field)
   value ||= checkEvent(field)
 end

 def setTime(field) 
    value = checkSession(field.gsub("at","time"))
    value ||= displayEventTime checkEvent(field)    
 end

 def setDate(field)
    value = checkSession(field.gsub("at","date"))   
    value ||= displayEventDate checkEvent(field) 
    
 end
end
