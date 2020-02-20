Rails.application.routes.draw do
  root to: 'bars#index'
  resources :bars, only: [:index, :new, :create, :show, :edit, :update] do
    resources :reservations, only: [:new, :create, :destroy] do
      member do
        patch'/change_status', to: 'reservation#change_status'
      end
    end
  end

  get 'profile', to: 'dashboards#profile'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
