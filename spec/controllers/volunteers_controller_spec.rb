require 'spec_helper'

describe Dashboard::Application::VolunteersController do 
  describe 'get volunteers_controller' do 
    it 'should render new page' do
      get :index
      response.should be_success
    end
  end
  describe 'create volunter' do 
    it 'should redirect to the dashboard' do
      get :create, :volunteer => '1'
      response.should redirect_to(:dashboard)
    end
  end
end
