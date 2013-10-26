class Application < ActiveRecord::Base
  attr_accessible :day_phone, :first_name, :last_name, :resume
  # TODO enable one-to-many relationship with users.
end
