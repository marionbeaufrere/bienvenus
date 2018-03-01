Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#onboarding2'
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:update]
  resources :user_subtasks
end
