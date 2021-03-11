class ShopUserTweetsController < ApplicationController
  def new
    @shop_user_tweet = ShopUserTweet.new
  end

  def create
    @shop_user_tweet = ShopUserTweet.new(shop_user_tweet_params)
    if @shop_user_tweet.save
      redirect_to root_path
    else
      render :new
    end
  end




  private
  def shop_user_tweet_params
    params.require(:shop_user_tweet).permit(:text).merge(shop_user_id: current_shop_user.id)
  end
  
end