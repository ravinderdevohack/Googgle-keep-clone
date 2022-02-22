Rails.application.routes.draw do
  devise_for :users
  
  resources :labels
  resources :notes 
  root "notes#index"  

  post 'update', to: 'notes#note_update'
  post 'create', to: 'notes#create'
end
