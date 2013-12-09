class Event < ActiveRecord::Base
  attr_accessible :end_at, :name, :start_at, :location, :description, :user_id, :color
  has_event_calendar
  belongs_to :user
end
