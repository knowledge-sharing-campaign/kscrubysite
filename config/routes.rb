Rails.application.routes.draw do

  get 'user/admin'

  resources :topics do
    resources :comments
  end
  resources :tags
  #get 'invites/create'

  #get 'invites/destroy'

  #get 'events/index'

  #get 'events/controller'

  #get 'events/index'
  get '/admin' => 'users#admin'

  get 'termscons' => 'users#termscons'
  get 'registersuccess' => 'users#registersuccess'

  get '/aboutus' => 'users#aboutus'
  get '/charles' => 'users#charles'
  get '/contactus' => 'users#contactus'
  #get '/events' => 'users#events'

  get '/forum' => 'topics#index'
  get '/gallery' => 'users#gallery'

  get '/partners' => 'users#partners'
  get '/privacy' => 'users#privacy'
  get '/rahul' => 'users#rahul'

  get '/dashboard' => 'users#dashboard'

  get 'user_events' => 'users#my_events'

  get 'statis_pages/about'

  get 'invites/create'

  #devise_for :users, :controllers: { sessions: 'users/sessions' }

  resources :users#, only:[:new, :create]

  resource :welcome, only:[:new]

  resource :session, only: [:new, :create, :destroy]

  resources :events#, only: [:new, :create, :show, :index]

  resources :invites#, only: [:create, :destroy]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'users#index'

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
end
