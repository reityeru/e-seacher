class MainUserComment < ApplicationRecord
  belongs_to :main_user
  belongs_to :main_usesr_tweet_commentable,  polymorphic: true
end
