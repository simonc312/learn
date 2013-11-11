require 'spec_helper'

describe Dashboard::Calendar::EventsController do
  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe 'get dashboard/calendar/events#new' do 
    it 'should render the new page for calendar event' do 
      get :new
      response.should == '/dashboard/calendar/events/new'
    end
  end
  
  describe 'get dashboard/calendar/events#edit' do 
    @event = FactoryGirl.create(:event)
    it 'should render the edit page for calendar event' do 
      get :edit, {:id => @event.id}
      #response.should redirect_to '/dashboard/calendar/events/#{:id}'
      page.should have_content "Edit"
    end
  end
  describe 'get dashboard/calendar/events#show' do 
    FactoryGirl.create(:event)
    it 'should render the show page for calendar event' do 
      get :show
      response.should redirect_to '/dashboard/calendar/events/:id'
    end
  end
  describe 'get dashboard/calendar/events#delete' do 
    FactoryGirl.create(:event)
    it 'should render the redirect to calendar page' do 
      get :edit
      response.should redirect_to '/dashboard/calendar'
    end
  end
  
end
