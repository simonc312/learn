# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create :email => 'theitsystem@gmail.com', :password => 'funLearning2014'
admin.update_attribute(:admin, 'true')
admin.update_attribute(:status, 'admin')

user1 = User.create :email => 'simon.c312@berkeley.edu', :password => 'simonchen169'
volApp1 = Volunteer.create :first_name => 'Simon', :last_name => 'Chen', :gender => 'Male', :birthday => 'May 18 1990', :city => 'Berkeley', :state => 'CA', :street_address => '2418 Dwight Way', :phone => '805-535-5159'
user1.apps << volApp1
user1.update_attribute(:status, 'volunteer_candidate')

user2 = User.create :email => 'simon.c312@gmail.com', :password => 'simonchen169'
clApp1 = Client.create :first_name => 'Simon', :last_name => 'Chen', :gender => 'Male', :birthday => 'Dec 31 1993', :city => 'Berkeley', :state => 'CA', :street_address => '2555 College Ave', :phone => '123-456-7890'
user2.apps << clApp1
user2.update_attribute(:status, 'client_candidate')



# ([ { admin: true }, { email: 'theitsystem@gmail.com' }, { password: 'learningshelter2014'}])

