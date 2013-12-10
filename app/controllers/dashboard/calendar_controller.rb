class Dashboard::CalendarController < ApplicationController
  before_filter :authenticate_user!  
  include GetEventsHelper
  def index  
    self.getEvents 
  end
  
end
