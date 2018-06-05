Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # INDEX
  # root to: 'tasks#index'
  # resources :tasks


  get "tasks",           to: "tasks#index", as: :index

  # create
  get "tasks/new",       to: "tasks#new", as: :new

  # SHOW
  get "tasks/:id",       to: "tasks#show", as: :task

  post "tasks",          to: "tasks#create"

  delete "tasks/:id",    to: "tasks#destroy", as: :destroy

  # EDIT / UPDATE
  get "tasks/:id/edit",  to: "tasks#edit", as: :edit
  patch "tasks/:id",     to: "tasks#update"




end



