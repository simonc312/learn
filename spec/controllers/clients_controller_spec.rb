require 'spec_helper'

describe Dashboard::Application::ClientsController do 
  describe 'get clients#index' do 
    it 'should render a new page for clients' do 
      get :index
      response.should be_success
    end
  end
  describe 'get clients#create' do 
    it 'should render the create page for clients' do 
      post :create
      response.should redirect_to '/dashboard'
    end
  end
end 
