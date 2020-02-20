Rails.application.routes.draw do
  # get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    get 'users/new'
    get 'users/edit'
    get 'users/show'
    get 'users/index'
  end
  namespace :admin do
    resources :users
  end

  root to: 'tasks#index'
  resources :tasks
  # get 'tasks/show', to:"tasks#show"
  # get 'tasks/new', to:"tasks#new"
  # get 'tasks/edit', to:"tasks#edit"
  # post '/create', to:"tasks#create"
  # delete 'tasks/:id', to:"tasks#destroy"
  # get 'tasks/:id/edit', to:"tasks#edit"
  # patch 'tasks/:id', to:"tasks#update"   
end