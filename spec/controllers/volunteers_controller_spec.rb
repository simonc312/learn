require 'spec_helper'

describe Dashboard::Application::VolunteersController do

  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end 
  describe 'get volunteers_controller' do 
    it 'should render new page' do
      get :index
      response.should be_success
    end
  end
  describe 'create volunteer' do 
    it 'should redirect to the dashboard' do
      post :create
      response.should redirect_to '/dashboard'
    end
  end
end
