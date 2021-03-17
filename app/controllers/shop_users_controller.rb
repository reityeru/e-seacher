class ShopUsersController < ApplicationController
  def show
    @shop_user = ShopUser.find(params[:id])
    @shop_user_tweets = @shop_user.shop_user_tweets
  end

  def edit
    @shop_user = ShopUser.find(params[:id])
  end

  def update
    @shop_user = ShopUser.find(params[:id])
    if @shop_user.update(shop_user_params)
      redirect_to shop_user_path(current_shop_user.id)
    else
      render :edit
    end
  end


  private
  def shop_user_params
    params.require(:shop_user).permit(:shop_name, :phone_number, :postal_code, :prefecture_id, :city_id, :address, :building_name, :profile, :shop_link, payment_type_ids: [])
  end

end
