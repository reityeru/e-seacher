class MainUserComment < ApplicationRecord
  belongs_to :main_user
  belongs_to :main_user_tweet
  belongs_to :shop_user_tweet
end
