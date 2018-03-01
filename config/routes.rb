Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding2'
  resources :users, only: [:edit, :update, :show]
  resources :tasks, only: [:index, :show, :update]
  resources :substasks, only: [:show]
  resources :user_subtasks
  get 'initialize', to: 'tasks#initializer', as: :initialize
end
