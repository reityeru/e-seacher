class ShopUserTweet < ApplicationRecord
  validates :text, presence: true, length: { maximum: 300 }

  belongs_to :shop_user
  has_many   :shop_user_comments
  has_many   :main_user_comments
end
