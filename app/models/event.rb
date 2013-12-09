class Event < ActiveRecord::Base
  attr_accessible :name, :end_at, :start_at, :location, :description, :user_id, :color
  has_event_calendar
  belongs_to :user
end
