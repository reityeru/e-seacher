class ShopUserTweets::MainUserCommentsController < MainUserCommentsController  
  before_action :set_main_user_commentable, only: :create  
  private  
    def set_main_user_commentable  
      @main_user_commentable = ShopUserTweet.find(params[:shop_user_tweet_id])  
    end  
end  