Rails.application.routes.draw do

  root 'pages#home'
  resources :employees
  resources :requests
  
  #resources :employees do
  #  resources :requests
  #end 


  get     'requests'      =>  'employees/requests#index'
  get     'requests'      =>  'employees/requests#edit'
  post    'requests'      =>  'employees/requests#create'
  delete  'requests'      =>  'employees/requests#destroy'
  get     'calendar'      =>  'calendar#show'
  get     'contact'       => 'pages#contact'
  #post    'contact'       => 'contact#send_mail', via: 'post'   #send button disabled on form
  #get     'request-type'  =>  'request_types#index'
  #get     'request-type'  =>  'request_types#edit'
  #post    'request-type'  =>  'request_types#create'
  #delete  'request-type'  =>  'request_types#destroy'
  #resources :request_types # not using this

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
