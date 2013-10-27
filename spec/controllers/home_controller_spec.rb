require 'spec_helper'


describe HomeController do 
  describe 'GET home#index page' do 
    describe 'when not logged in' do 
      it 'should render a new page' do 
        get :index
        response.should be_success
      end
    end
    describe 'when logged in' do 
      it 'should redirect to dashboard#index' do 

      end
    end
  end
end
