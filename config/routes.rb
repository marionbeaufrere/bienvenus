Rails.application.routes.draw do
  devise_for :users do
    resources :tasks, only: [:index, :show]
  end
  root to: 'pages#home'
  resources :tasks, only: [:index, :show]
  resources :subtasks, only: [:index, :update]
  resources :user_subtasks
end
