LearningShelter::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  devise_for :users
	#namespace :dashboard
  match 'dashboard' => 'dashboard#index'
# calendar
  #match 'calendar/events/new' => 'events#new' # link


# /admin
  match '/admin' => 'admin#index'
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

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
