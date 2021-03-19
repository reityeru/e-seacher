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
  has_many   :main_user_comments, dependent: :destroy, as: :main_usesr_tweet_commentable
  has_many   :shop_user_comments, dependent: :destroy
  has_many   :main_user_tweet_payment_types, dependent: :destroy
  has_many   :payment_types, through: :main_user_tweet_payment_types
  has_many_attached :main_user_tweet_images

  # 検索フォームのスコープ
  scope :shop_name, -> (keyword) { where('shop_name LIKE ?', "%#{keyword}%") }
  scope :prefecture_id, -> (prefecture_id) { where(prefecture_id: prefecture_id) }
  scope :city_id, -> (city_id) { where(city_id: city_id) }
  scope :genre_id, -> (genre_id) { where(genre_id: genre_id) }
  scope :main_user_tweet_id, -> (selected_main_user_tweet_ids) { where(id: selected_main_user_tweet_ids) if selected_main_user_tweet_ids.present? }
  scope :take_out, -> (take_out) { where(take_out: take_out) if take_out.present? }


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
