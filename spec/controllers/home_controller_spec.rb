require 'spec_helper'



describe HomeController do
  include Devise::TestHelpers

  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end
  describe 'GET home#index page' do 
#    describe 'when not logged in' do 
#      it 'should render a new page' do 
#        get :index
#        response.should be_success
#      end
#    end
    describe 'when logged in' do 
      it 'should redirect to dashboard#index' do 
        get :index
        response.should redirect_to(dashboard_index_path)
      end
    end
  end
end
