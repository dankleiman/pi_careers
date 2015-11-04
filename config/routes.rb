Rails.application.routes.draw do
  devise_for :users
  resources :skills

  resources :roles

  resources :departments

  resources :organizations

  root 'dashboard#example_one'

end
