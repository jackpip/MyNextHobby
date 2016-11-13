Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  devise_for :users
  get 'add_hobby' => "users#add_hobby"
  get 'remove_hobby' => "users#remove_hobby"
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :hobbies do
    resources :resources
  end
  resources :messages
end
