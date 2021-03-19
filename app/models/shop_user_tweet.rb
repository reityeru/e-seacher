class ShopUserTweet < ApplicationRecord
  validates :text, presence: true, length: { maximum: 300 }

  belongs_to :shop_user
  has_many   :shop_user_comments, dependent: :destroy
  has_many   :main_user_comments, dependent: :destroy, as: :main_usesr_tweet_commentable
  has_many_attached :shop_user_tweet_images
end
