Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tasks, only: [:index, :show]
  resources :substasks, only: [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user_subtasks
end
