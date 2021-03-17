class MainUsersController < ApplicationController
  before_action :set_main_user, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def show
    @main_user_tweets = @main_user.main_user_tweets
  end

  def edit
  end

  def update
    if @main_user.update(main_user_params)
      redirect_to main_user_path(current_main_user.id)
    else
      render :edit
    end
  end

  def destroy
    @main_user.destroy
    redirect_to new_main_user_session_path
  end


  private
  def main_user_params
    params.require(:main_user).permit(:nickname, :phone_number, :profile)
  end

  def set_main_user
    @main_user = MainUser.find(params[:id])
  end

  def move_to_index
    if main_user_signed_in?
      redirect_to root_path if current_main_user.id != @main_user.id
    else
      redirect_to root_path
    end
  end
end
