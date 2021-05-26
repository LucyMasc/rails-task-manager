Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # As a user, I can list tasks # Read
  get 'tasks', to: 'tasks#index'

  # As a user, I can add a new task #Create
  get 'tasks/new', to: 'tasks#new' #display form

  #  As a user, I can view the details of a task when clicking on the link - read
  get 'tasks/:id', to: 'tasks#show', as: :task_details

  # As a user, I can add a new task #Create
  post 'tasks', to: 'tasks#create'

  # As a user, I can edit a task
  # show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # update the task
  patch 'tasks/:id', to: 'tasks#update'
  # patch is when the file already exists but it is being edited

  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
