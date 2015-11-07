Rails.application.routes.draw do
  devise_for :users

  resources :skills

  resources :roles

  resources :departments

  resources :organizations

  resources :jobs do
    collection do
      post 'add'
    end
  end

  root 'jobs#compare'

end
