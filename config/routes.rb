Rails.application.routes.draw do
  get 'todolists/new'
  resources :homes
  root to: 'homes#top'
  resources :books
  get 'todolists' => 'todolists#index'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'


end
