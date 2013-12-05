class ApplicationController < ActionController::Base
  protect_from_forgery

 def isOwner?(event) 
   event.user_id == current_user.id
 end

 def isAdminEvent?(event)
   User.find(event.user_id).admin
 end
end
