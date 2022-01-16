Rails.application.routes.draw do
  get 'todolists/new'
  resources :homes
  root to: 'homes#top'
  resources :books
  get 'todolists' => 'todolists#index'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
