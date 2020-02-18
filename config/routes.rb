Rails.application.routes.draw do
  root to: 'bars#index'
  get "/search" => "bars#search"
  resources :bars, only: [:index, :new, :create, :show] do
    resources :reservations, only: [:new, :create, :destroy]
  end
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
