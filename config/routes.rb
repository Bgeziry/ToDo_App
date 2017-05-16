Rails.application.routes.draw do

  devise_for :users
  resources :todo_item

  root 'todo_item#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
