Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'quizs/index'

  resources :users, only: [:show]
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  resources :quizs do
    collection do
      get 'store_manager'
      get 'employee'
    end
  end
end
