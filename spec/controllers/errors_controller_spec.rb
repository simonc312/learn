require 'spec_helper'

describe ErrorsController do

  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end 
  describe 'Visiting non-existent page' do 
    it "should render 404 page" do
      visit '/asdfasdf'
      response.should render_template(:file => "#{Rails.root}/public/404.html")
    end
  end
end
