require "spec_helper"

describe MassMailer do
  before {ActionMailer::Base.deliveries =[]}
  it "should send confirmation emails" do 
    user = FactoryGirl.create(:user)
    users = [user,user,user]
    MassMailer.mass_email(users, "Hello", "subject").deliver
    ActionMailer::Base.deliveries.should_not be_empty
  end

end
