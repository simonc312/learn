require 'spec_helper'
describe Admin::CalendarController do 
 before(:each) do 
    @admin = FactoryGirl.create(:user, :is_admin)
    sign_in @admin
 end
  describe '#index' do 
    it 'should get the index page' do 
      get 'index'
      response.should be_success
    end
    it 'sees all events' do 
      #check 
    end
  end
end
