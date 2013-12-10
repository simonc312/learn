class App < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :birthday, :city, :state, :street_address, :phone, :resume, :cover_letter, :accepted
  belongs_to :user

end
