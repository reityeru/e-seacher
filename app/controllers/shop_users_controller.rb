class ShopUsersController < ApplicationController
  def show
    @shop_user = ShopUser.find(params[:id])
    @shop_user_tweets = @shop_user.shop_user_tweets
  end
end
