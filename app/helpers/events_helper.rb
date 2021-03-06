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

 def prettifyEventDate(eventTime)
   eventTime.strftime('%A %d, %B at %l:%M %P')
 end
end
