class MainUsersController < ApplicationController
  def show
    @main_user = MainUser.find(params[:id])
    @main_user_tweets = @main_user.main_user_tweets
  end

  def edit
    @main_user = MainUser.find(params[:id])
  end


end
