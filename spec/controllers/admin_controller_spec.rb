require 'spec_helper'

describe AdminController do 

  before(:each) do 
    @user = FactoryGirl.create(:user)
    @user.update_attribute(:admin,true)
    sign_in @user
  end
  describe 'get admin_controller' do 
    it 'should render new page' do
      get :index
      response.should be_success
    end
  end

end
