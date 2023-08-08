Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Show all the tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # Add a task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # Show the detail of one specific task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Edit the task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete the task
  delete '/tasks/:id', to: 'tasks#destroy'
end
