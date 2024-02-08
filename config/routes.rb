Rails.application.routes.draw do
  get "/todos/index", to: "todo#index"
  get "/todos/new", to: "todo#new"
  post "todos/create", to: "todo#create"
  root 'todo#index'
  get "todos/:id/edit", to: "todo#edit"
  post "todos/:id/update", to: "todo#update"
  delete "/todos/:id", to: "todo#destroy"
  resources :todos
end
