class TimelinesController < ApplicationController
  def index
    main_user_tweets = MainUserTweet.includes(:main_user ,:shop_user)
    shop_user_tweets = ShopUserTweet.includes(:shop_user)
    @tweets = main_user_tweets | shop_user_tweets
    @tweets.sort!{ |a, b| b.created_at <=> a.created_at }
  end
end
