class ShopUsersController < ApplicationController
  before_action :set_shop_user, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def show
    @shop_user_tweets = @shop_user.shop_user_tweets
  end

  def edit
  end

  def update
    if @shop_user.update(shop_user_params)
      redirect_to shop_user_path(current_shop_user.id)
    else
      render :edit
    end
  end

  def destroy
    @shop_user.destroy
    redirect_to new_main_user_session_path
  end


  private
  def shop_user_params
    params.require(:shop_user).permit(:shop_name, :phone_number, :postal_code, :prefecture_id, :city_id, :address, :building_name, :profile, :shop_link, payment_type_ids: [])
  end

  def set_shop_user
    @shop_user = ShopUser.find(params[:id])
  end

  def move_to_index
    if shop_user_signed_in?
      redirect_to root_path if current_shop_user.id != @shop_user.id
    else
      redirect_to root_path
    end
  end
end
