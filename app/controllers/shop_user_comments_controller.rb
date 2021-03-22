class ShopUserCommentsController < ApplicationController
  def create
    @shop_user_comment = @shop_user_commentable.shop_user_comments.build(shop_user_comment_params)
    if @shop_user_commentable.class == MainUserTweet
      if @shop_user_comment.save 
        redirect_to main_user_tweet_path(@shop_user_commentable.id)
      else
        @main_user_tweet = @shop_user_commentable
        main_user_comments = @main_user_tweet.main_user_comments
        shop_user_comments = @main_user_tweet.shop_user_comments
        @comments = main_user_comments | shop_user_comments
        @comments.delete_if {|comment| comment.id == nil}
        @comments.sort! { |a, b| b.created_at <=> a.created_at }
        render "main_user_tweets/show"
      end
    else
      if @shop_user_comment.save 
        redirect_to shop_user_tweet_path(@shop_user_commentable.id)
      else
        @shop_user_tweet = @main_user_commentable
        main_user_comments = @shop_user_tweet.main_user_comments
        shop_user_comments = @shop_user_tweet.shop_user_comments
        @comments = main_user_comments | shop_user_comments
        @comments.delete_if {|comment| comment.id == nil}
        @comments.sort! { |a, b| b.created_at <=> a.created_at }
        render "shop_user_tweets/show"
      end
    end
  end



  private
  def shop_user_comment_params
    params.require(:shop_user_comment).permit(:comment).merge(shop_user_id: current_shop_user.id)
  end
end
