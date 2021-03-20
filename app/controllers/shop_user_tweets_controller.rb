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
    @main_user_comment = MainUserComment.new
    #@shop_user_comment = ShopUserComment.new
    main_user_comments = @shop_user_tweet.main_user_comments
    #shop_user_comments = @main_user_tweet.shop_user_comments
    @comments = main_user_comments #| shop_user_comments
    #@comments.sort! { |a, b| b.created_at <=> a.created_at }
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

  def destroy
    @shop_user_tweet.destroy
    redirect_to root_path
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
      redirect_to root_path if current_shop_user.id != @shop_user_tweet.shop_user_id
    else
      redirect_to root_path
    end
  end
end
