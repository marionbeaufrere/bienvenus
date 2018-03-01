Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#welcome_screen'
  resources :users, only: [:edit, :update, :show]
  resources :tasks, only: [:index, :show, :update]
  resources :substasks, only: [:show]
  resources :user_subtasks
  get 'initialize', to: 'tasks#initializer', as: :initialize
  get '/pages/onboarding', to: 'pages#onboarding', as: 'onboarding'
  get '/pages/are_you', to: 'pages#are_you', as: 'are_you'
end
