class Admin::CalendarController < ApplicationController
  before_filter :authenticate_admin!
  include GetEventsHelper
  def index
    self.getEvents
  end
  
end
