class MainUserTweets::ShopUserCommentsController < ShopUserCommentsController  
  before_action :set_shop_user_commentable, only: :create  
  private  
    def set_shop_user_commentable  
      @shop_user_commentable = MainUserTweet.find(params[:main_user_tweet_id])  
    end  
end  