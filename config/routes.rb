Rails.application.routes.draw do

  resources :requests

  resources :request_types

  root 'pages#home'
 


  
  get     'calendar'      =>  'calendar#show'
  get     'contact'       => 'pages#contact'
  
 


end
