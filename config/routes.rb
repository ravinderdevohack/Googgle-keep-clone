Rails.application.routes.draw do
  devise_for :users
  
  resources :labels
  resources :notes 
  root "notes#index"  

  post 'update', to: 'notes#update'
  post 'create', to: 'notes#create'
  post 'notes/:id', to: 'notes#restore', as: 'restore'
end
