class MainUsersController < ApplicationController
  def show
    @main_user = MainUser.find(params[:id])
    @main_user_tweets = @main_user.main_user_tweets
  end

  def edit
    @main_user = MainUser.find(params[:id])
  end

  def update
    @main_user = MainUser.find(params[:id])
    if @main_user.update(main_user_params)
      redirect_to main_user_path(current_main_user.id)
    else
      render :edit
    end
  end


  private
  def main_user_params
    params.require(:main_user).permit(:nickname, :phone_number, :profile)
  end
end
