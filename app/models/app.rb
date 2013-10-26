class App < ActiveRecord::Base
  belongs_to :user
  attr_accessible :phone, :first_name, :last_name, :gender, :birthday, :city, :state, :street_address
end
