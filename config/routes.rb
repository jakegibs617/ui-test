Rails.application.routes.draw do
  root 'users#index'

  resources :games, only: [:new, :create, :destroy] do
    collection do
      get 'remove_all'
    end
  end

  resources :games, collection: { remove_all: :get }

  resources :users, only: [:index, :new, :create]
end
