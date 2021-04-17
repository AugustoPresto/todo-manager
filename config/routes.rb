Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all
  get 'tasks', to: 'tasks#index'
  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # create task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # edit task
  get 'task/:id/edit', to: 'task#edit'
  patch 'task/:id', to: 'task#update'

  # delete task
  delete 'task/:id', to: 'task#destroy'
end
