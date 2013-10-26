class App < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :birthday, :city, :state, :street_address, :phone
  belongs_to :user

end
