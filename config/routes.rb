Rails.application.routes.draw do
  devise_for :shop_users
  devise_for :main_users
  root to: "timelines#index"
  resources :main_user_tweets
end
