class MainUserTweetsController < ApplicationController
  before_action :set_main_user_tweet, only: [:edit, :show, :update, :destroy]

  def new
    @main_user_tweet = MainUserTweet.new
  end

  def create
    @main_user_tweet = MainUserTweet.new(main_user_tweet_params)
    shop_user = ShopUser.find_by(shop_name: @main_user_tweet.shop_name)
    if shop_user.nil?
      if @main_user_tweet.save
        redirect_to root_path
      else
        render :new
      end
    else
      @main_user_tweet.shop_user_id = shop_user.id
      if @main_user_tweet.save
        redirect_to root_path
      else
        render :new
      end
    end
  end

  def show
    @payment_type_id = @main_user_tweet.payment_type_ids
    @payment_types = PaymentType.find([@payment_type_id])
  end

  def edit
  end

  def update
    if @main_user_tweet.update(main_user_tweet_params)
      redirect_to main_user_tweet_path(@main_user_tweet.id)
    else
      render :edit
    end
  end

  private

  def main_user_tweet_params
    params.require(:main_user_tweet).permit(:shop_name, :text, :prefectures, :city, :genre_id, :take_out, :shop_user,
                                            main_user_tweet_images: [], payment_type_ids: []).merge(main_user_id: current_main_user.id)
  end

  def set_main_user_tweet
    @main_user_tweet = MainUserTweet.find(params[:id])
  end
end
