class ShopUserTweetsController < ApplicationController
  def new
    @shop_user_tweet = ShopUserTweet.new
  end
end
