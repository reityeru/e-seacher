class ShopUserTweetsController < ApplicationController
  before_action :set_shop_user_tweet, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy, :update]

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

  def edit
  end

  def update
    if @shop_user_tweet.update(shop_user_tweet_params)
      redirect_to shop_user_tweet_path(@shop_user_tweet.id)
    else
      render :edit
    end
  end

  private

  def shop_user_tweet_params
    params.require(:shop_user_tweet).permit(:text, shop_user_tweet_images: []).merge(shop_user_id: current_shop_user.id)
  end

  def set_shop_user_tweet
    @shop_user_tweet = ShopUserTweet.find(params[:id])
  end

  def move_to_index
    if shop_user_signed_in?
      if current_shop_user.id != @shop_user_tweet.shop_user_id
        redirect_to root_path 
      end
    else
      redirect_to root_path 
    end
  end
end
