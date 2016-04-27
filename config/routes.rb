Rails.application.routes.draw do

  #resources :users

  get '/home' => 'users#home'
  get '/login' => 'users#login'
  post '/login' => "users#processlogin"
  post '/' => 'users#create'
  
  root 'main#register'

  #get '/aboutus' => 'welcome#aboutus'
  #get '/charles' => 'welcome#charles'
  #get '/contactus' => 'welcome#contactus'
  #get '/events' => 'welcome#events'
  #get '/forgotpassword' => 'welcome#forgotpassword'
  #get '/forum' => 'welcome#forum'
  #get '/gallery' => 'welcome#gallery'
  #get '/login' => 'welcome#login'
  #get '/partners' => 'welcome#partners'
  #get '/privacy' => 'welcome#privacy'
  #get '/rahul' => 'welcome#rahul'
  #get '/register' => 'welcome#register'

  #get '/registrationsuccessful' => 'welcome#registrationsuccessful'
  #get '/slider' => 'welcome#slider'
  #get '/termscons' => 'welcome#termscons'
  #get '/upcomingevents' => 'welcome#upcomingevents'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  #match ':controller(/:action(/:id))', :via => :get
end
