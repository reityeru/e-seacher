Rails.application.routes.draw do
  devise_for :shop_users
  devise_for :main_users
  root to: "timelines#index"
  resources :timelines, only: :index do
    collection do
      get 'search'
    end
  end
  resources :main_user_tweets do
    resources :main_user_comments, only: :create
  end
  resources :shop_user_tweets
  resources :main_users, only: [:show, :edit, :update, :destroy]
  resources :shop_users, only: [:show, :edit, :update, :destroy]
end
