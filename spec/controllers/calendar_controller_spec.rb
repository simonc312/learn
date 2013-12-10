require 'spec_helper'

describe Dashboard::CalendarController do
  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end 
  describe 'get the index page' do 
    it 'should get the index page' do 
      get 'index'
      response.should be_success


    end
  end
end
