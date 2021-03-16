class TimelinesController < ApplicationController
  
  def index
    main_user_tweets = MainUserTweet.includes(:main_user, :shop_user)
    shop_user_tweets = ShopUserTweet.includes(:shop_user)
    @tweets = main_user_tweets | shop_user_tweets
    @tweets.sort! { |a, b| b.created_at <=> a.created_at }
  end

  def search
    # 検索ワード
    keyword = params['keyword']
    prefecture_id = params[:prefecture_id]
    city_id = params[:city_id]
    genre_id = params[:genre_id]
    selected_payment_type_ids = params[:payment_type_ids]
    selected_main_user_tweet_ids = MainUserTweetPaymentType.where(payment_type_id: selected_payment_type_ids).pluck(:main_user_tweet_id)
    take_out = params[:take_out]
    # 投稿検索結果
    result_main_user_tweets = main_user_tweets(keyword, prefecture_id, city_id, genre_id, selected_main_user_tweet_ids, take_out)
    # 投稿検索結果
    result_shop_user_tweets = shop_user_tweets(keyword, prefecture_id, city_id)
    @result_tweets = result_main_user_tweets | result_shop_user_tweets
    @result_tweets.sort! { |a, b| b.created_at <=> a.created_at }
  end
  
  private
  
  # 投稿検索
  def main_user_tweets(keyword, prefecture_id, city_id, genre_id, selected_main_user_tweet_ids, take_out)
    # 投稿検索結果
    MainUserTweet.shop_name(keyword).prefecture_id(prefecture_id).city_id(city_id).genre_id(genre_id).main_user_tweet_id(selected_main_user_tweet_ids).take_out(take_out)
  end
  
  # 投稿検索
  def shop_user_tweets(keyword, prefecture_id, city_id)
    ShopUserTweet.joins(:shop_user).where('shop_name LIKE ?', "%#{keyword}%").where(shop_users: {prefecture_id: prefecture_id}).where(shop_users: {city_id: city_id})
  end
end
