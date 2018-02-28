Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding'
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:update]
  resources :user_subtasks
  get 'welcome1', to: 'pages#welcome1', as: "welcome1"
  get 'welcome2', to: 'pages#welcome2', as: "welcome2"
  get 'welcome3', to: 'pages#welcome3', as: "welcome3"
end
