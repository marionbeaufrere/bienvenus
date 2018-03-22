Rails.application.routes.draw do
  scope '(:locale)', locale: /fr/ do
    devise_for :users, controllers: { registrations: "registrations" }
    root to: 'pages#welcome_screen'
    resources :users, only: [:edit, :update, :show]
    resources :tasks, only: [:index, :show, :update] do
      member do
        post 'complete_subtasks'
        get 'destroy_subtasks'
      end
    end
    resources :substasks, only: [:show]
    resources :user_subtasks
    get 'initialize', to: 'tasks#initializer', as: :initialize
    get '/pages/home', to: 'pages#home', as: 'home'
    get '/pages/onboarding', to: 'pages#onboarding', as: 'onboarding'
    get '/pages/are_you', to: 'pages#are_you', as: 'are_you'
    get '/pages/asylum_seeker', to: 'pages#asylum_seeker', as: 'asylum_seeker'
    get '/pages/resources', to: 'pages#resources', as: 'resources'
    get '/pages/acronyms', to: 'pages#acronyms', as: 'acronyms'
    get '/pages/map', to: 'pages#map', as: 'map'

    namespace :admin do
      resources :tasks, only: [:index, :show, :new, :create, :edit, :update] do
        resources :subtasks, only: [:new, :create, :edit, :update]
      end
    end
    get '/pages/dashboard', to: 'pages#dashboard', as: 'dashboard'
  end
end
