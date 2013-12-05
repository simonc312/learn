module EventsHelper
 def isOwner?
   @event.user_id == current_user.id
 end

 def isAdminEvent?
   User.find(@event.user_id).admin
 end
end
