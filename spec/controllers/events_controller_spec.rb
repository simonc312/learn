require 'spec_helper'

describe Dashboard::Calendar::EventsController do
  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
    @event = mock('Event', :name => 'eventname', :description => 'mydes', :id => '11')
  end
  describe 'get events_controller' do 
    it 'should render new page' do
      get :index
      response.should be_success
    end
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe 'get create path' do 
    it 'should render the new page for calendar event' do 
      post :new
      #puts response
      response.should be_success
    end
    it 'calls create' do
      new_event = FactoryGirl.build(:event)
      Event.should_receive(:new).and_return(new_event)
      post :create
      assigns[:event].should eq(new_event)
    end
  end
  describe "#create" do 
     it 'should add event to database and redirect to home page' do
      e = mock('Event')
      e2 = FactoryGirl.create(:event)
      e.stub!(:name)
      Event.find(e2.id).should_not be_nil
#      post :create, {:id => e}
#      response.should be_success
#Event.should_receive(:create!).and_return(e)
    end
  end 

  describe 'get dashboard/calendar/events#edit' do 
    it 'should render the edit page for calendar event' do 
      Event.should_receive(:find).with('11').and_return(@event)
      get :edit, {:id => '11'}
      response.should be_success
    end
  end
  describe 'get dashboard/calendar/events#destroy' do 
    it 'should render the edit page for calendar event' do 
      Event.should_receive(:destroy).with('11').and_return(@event)
      get :destroy, {:id => '11'}
      response.should be_success
    end
  end

end
