Rails.application.routes.draw do

  root 'pages#home'
  resources :employees
  resources :requests
  #resources :employees do
  #  resources :requests
  #end 
  resources :request_types
  #resource :calendar, only: [:show], controller: :calendar
  
  get     'calendar'      =>  'calendar#show'
  get     'requests'      =>  'employees/requests#index'
  get     'requests'      =>  'employees/requests#edit'
  post    'requests'      =>  'employees/requests#create'
  delete  'requests'      =>  'employees/requests#destroy'
  get     'request-type'  =>  'request_types#index'
  get     'request-type'  =>  'request_types#edit'
  post    'request-type'  =>  'request_types#create'
  delete  'request-type'  =>  'request_types#destroy'
  
  get     'contact'       => 'pages#contact'
  post    'contact'       => 'contact#send_mail', via: 'post'

  
  #resources :users
  #resources :account_activations, only: [:edit]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
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
