class ShopUserTweets::ShopUserCommentsController < ShopUserCommentsController  
  before_action :set_shop_user_commentable, only: :create  
  private  
    def set_shop_user_commentable  
      @shop_user_commentable = ShopUserTweet.find(params[:shop_user_tweet_id])
    end  
end  