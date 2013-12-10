require 'spec_helper'

describe Dashboard::Calendar::EventsController do
  before(:each) do 
    @user = FactoryGirl.create(:user)
    sign_in @user
    @event = FactoryGirl.create(:event)
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
      post :create, :event => { 'start_date' => '12/12/2013',
                                'start_time' => '8:00 am',
                                'end_date' => '12/13/2013',
                                'end_time' => '9:00 pm'
                              }
      assigns[:event].should eq(new_event)
    end
    it 'calls create with badly formatted date' do
      # tests the date format with dd/mm/yyyy instead of mm/dd/yyyy
       post :create, :event => { 'start_date' => '23/12/2013',
                                'start_time' => '9:00 am',
                                'end_date' => '24/12/2013',
                                'end_time' => '11:10 am'
                              }
      response.should redirect_to '/dashboard/calendar/events/new'
    end
    it 'calls create with end date before start date' do
        post :create, :event => { 'start_date' => '12/10/2013',
                                'start_time' => '9:00 am',
                                'end_date' => '12/09/2013',
                                'end_time' => '11:10 am'
                              }
      response.should redirect_to '/dashboard/calendar/events/new'
    end
  end
  describe "#create" do 
     it 'should add event to database and redirect to home page' do
      e2 = FactoryGirl.create(:event)
      Event.find(e2.id).should_not be_nil
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
      delete :destroy, {:id => @event.id}
      response.should redirect_to '/dashboard/calendar'
    end
  end
  describe 'get #show' do
    it 'should render the show page' do
      get :show, {:id => @event.id}
      response.should be_success
    end
  end
  describe 'put #update' do 
    it 'should redirect to the event path' do
      put :update, {:id => @event.id}
      response.should redirect_to "/dashboard/calendar/events/#{@event.id}"
    end
  end
end
