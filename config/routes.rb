Zard::Application.routes.draw do
  resources :songs
  resources :images
  resources :movies

  resource :user_session
  resources :users
  resource :account,:controller => "users"
  match "login" => "user_sessions#new"
  #match "register" => "users#new"
  match "logout" => "user_sessions#destroy"
  #sister
  match "zard/songs" => "sister#songs"
  match "zard/images" => "sister#images"
  match "zard/movies" => "sister#movies"
  #songs
  match "category" => "songs#add_category"
  match "new/category" => "songs#create_category"
  match "category/:id/destroy" => "songs#destroy_category",:as => :delete
  match "category/:id/toggle" => "sister#song_toggle",:as => :toggle
  match "song/:id/love" => "sister#song_love",:as => :love
  match "song/:id/listen" => "sister#listen_song",:as => :listen
  #images
  
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
  root :to => "sister#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
