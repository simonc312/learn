class ApplicationController < ActionController::Base
  protect_from_forgery

 def isOwner?(event) 
   event.user_id == current_user.id
 end

 def isAdminEvent?(event)
   User.find(event.user_id).admin
 end

 def isLoggedIn?
   user_signed_in?
 end

 def authenticate_admin!
   if current_user.try(:admin?)
     #do nothing
   else
     flash[:notice] = "You do not have the authorization to access this page"
     redirect_to '/dashboard'
   end
 end
end
