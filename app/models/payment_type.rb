class PaymentType < ApplicationRecord
  has_many :shop_user_payment_types
  has_many :shop_users, through: :shop_user_payment_types
  has_many :main_user_tweet_payment_types
  has_many :main_user_tweets, through: :main_user_tweet_payment_types
end
