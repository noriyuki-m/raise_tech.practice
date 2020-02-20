Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'tasks#index'
	get 'tasks/show', to:"tasks#show"
	get 'tasks/new', to:"tasks#new"
	get 'tasks/edit', to:"tasks#edit"
    post '/create', to:"tasks#create"
    delete 'tasks/:id', to:"tasks#destroy"
    get 'tasks/:id/edit', to:"tasks#edit"
    patch 'tasks/:id', to:"tasks#update"   
end
