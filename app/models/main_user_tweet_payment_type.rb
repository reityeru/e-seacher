class MainUserTweetPaymentType < ApplicationRecord
  belongs_to :main_user_tweet
  belongs_to :payment_type
end
