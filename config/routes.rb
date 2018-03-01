Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding2'
  resources :users, only: [:edit, :update, :show]
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:show]
  resources :user_subtasks
  get '/pages/home', to: 'pages#home', as: 'home'
end
