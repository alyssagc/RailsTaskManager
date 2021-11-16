Rails.application.routes.draw do
  get 'tasks', to: 'tasks#list', as: :tasks
  get 'tasks/new', to: 'tasks#new', as: :new_task

  get "tasks/:id", to: "tasks#display", as: :task
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
