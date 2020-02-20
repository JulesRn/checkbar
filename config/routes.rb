Rails.application.routes.draw do
  root to: 'bars#index'
  resources :bars, only: [:index, :new, :create, :show, :edit, :update] do
    resources :reservations, only: [:new, :create, :destroy]
    resources :reviews, only: [:create]
  end

  get 'profile', to: 'dashboards#profile'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
