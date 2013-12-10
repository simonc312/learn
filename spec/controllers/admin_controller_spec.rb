require 'spec_helper'

describe AdminController do 

  

  describe 'get admin_controller' do 
    before(:each) do 
    @user = FactoryGirl.create(:user)
    @user.update_attribute(:admin,true)
    sign_in @user
  end
    it 'should render new page' do
      get :index
      response.should be_success
    end
  end

  

  describe 'unauthorized access' do 
    before(:each) do 
    @user2 = FactoryGirl.create(:user)
    @user2.update_attribute(:admin,false)
    sign_in @user2
  end
    it 'should render new page' do
      get :index
      response.should redirect_to '/dashboard'
    end
  end


end
