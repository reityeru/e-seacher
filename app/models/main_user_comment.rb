class MainUserComment < ApplicationRecord
  with_options presence: true do
    validates :comment, length: { maximum: 300 }
    validates :main_usesr_tweet_commentable_id
    validates :main_usesr_tweet_commentable_type
  end


  belongs_to :main_user
  belongs_to :main_usesr_tweet_commentable,  polymorphic: true
end
