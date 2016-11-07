Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :hobbies
  resources :messages
  resources :resources
end
