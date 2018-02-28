Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding'
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:update]
  resources :user_subtasks
end
