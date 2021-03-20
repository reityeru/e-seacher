class ShopUserComment < ApplicationRecord
  with_options presence: true do
    validates :comment, length: { maximum: 300 }
    validates :shop_usesr_tweet_commentable_id
    validates :shop_usesr_tweet_commentable_type
  end


  belongs_to :shop_user
  belongs_to :shop_usesr_tweet_commentable,  polymorphic: true
end
