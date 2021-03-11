class ShopUserTweetsController < ApplicationController
  before_action :set_shop_user_tweet, only: [:edit, :show, :update, :destroy]

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

def show
end


  private
  def shop_user_tweet_params
    params.require(:shop_user_tweet).permit(:text, shop_user_tweet_images: []).merge(shop_user_id: current_shop_user.id)
  end
  
  def set_shop_user_tweet
    @shop_user_tweet = ShopUserTweet.find(params[:id])
  end

end