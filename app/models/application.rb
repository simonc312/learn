class Application < ActiveRecord::Base
  belongs_to :user
  attr_accessible :day_phone, :first_name, :last_name, :resume
end
