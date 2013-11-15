require "spec_helper"

describe UserMailer do
  before {ActionMailer::Base.deliveries = []}
  it "should send confirmation emails" do
    user = FactoryGirl.create(:user)
    UserMailer.welcome_email(user).deliver
    ActionMailer::Base.deliveries.should_not be_empty

  end
end
