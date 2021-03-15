class MainUserTweet < ApplicationRecord
  with_options presence: true do
    validates :shop_name
    validates :text, length: { maximum: 300 }
    validates :prefecture_id
    validates :city_id
    validates :genre_id, numericality: { other_than: 1 }
  end

  belongs_to :main_user
  belongs_to :shop_user, optional: true
  belongs_to :prefecture
  belongs_to :city
  has_many   :main_user_comments
  has_many   :shop_user_comments
  has_many   :goods
  has_many   :likes
  has_many   :main_user_tweet_payment_types, dependent: :destroy
  has_many   :payment_types, through: :main_user_tweet_payment_types
  has_many_attached :main_user_tweet_images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
