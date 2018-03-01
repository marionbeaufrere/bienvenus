Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#welcome_screen'
  resources :users, only: [:edit, :update, :show]
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:show]
  resources :user_subtasks
  get '/pages/onboarding', to: 'pages#onboarding', as: 'onboarding'
  get '/pages/are_you', to: 'pages#are_you', as: 'are_you'
end
