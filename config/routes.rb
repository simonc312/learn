LearningShelter::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  match '/events(/:year(/:month))' => 'basic#events', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  devise_for :users
	#namespace :dashboard
  match 'dashboard' => 'dashboard#index'
# calendar
  #match 'calendar/events/new' => 'events#new' # link


# /admin
  get '/admin/mailer' => 'admin/mailer#send'
  post '/admin/mailer' => 'admin/mailer#send_mail'
  match '/admin' => 'admin#index'
  match '/admin/acceptClient/:id' => 'admin#acceptClient'
  match '/admin/acceptVol/:id' => 'admin#acceptVol'
  namespace :admin do
    resources :apps
  end
  match 'admin/calendar' => 'admin/calendar#index' # link
  namespace :admin do
    namespace :calendar do
      resources :events
    end
  end

#  get "basic/index"
  resources :home
  root :to => "home#index"
  get '/index' => "home#index", :as => 'index'
  match "/about" => "basic#about"
  match "/events" => "basic#events"
  match "/signup" => "basic#signup"
  match "/donate" => "basic#donate"
  
  match 'dashboard/application/cl' => 'application#apply_client' # link
  match 'dashboard/calendar' => 'dashboard/calendar#index' # link
  #CRUD
  namespace :dashboard do
    namespace :application do
      resources :clients
    end
    namespace :calendar do
       resources :events
    end	
  end	
 
  match 'dashboard/application/vol' => 'application#apply_volunteer' # link
  #CRUD
  namespace :dashboard do
    namespace :application do
      resources :volunteers
    end
  end	

  #ERROR
  match '*a', :to => 'errors#routing'

end
