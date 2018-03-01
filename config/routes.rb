Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding'
  resources :users, only: [:edit, :update, :show]
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:show]
  resources :user_subtasks
end
