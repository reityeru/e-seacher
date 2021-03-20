class MainUserCommentsController < ApplicationController


  def create
    @main_user_comment = @main_user_commentable.main_user_comments.build(main_user_comment_params)
    if @main_user_commentable.class == MainUserTweet
      if @main_user_comment.save 
        redirect_to main_user_tweet_path(@main_user_commentable.id)
      else
        @main_user_tweet = @main_user_commentable
        main_user_comments = @main_user_tweet.main_user_comments
        # shop_user_comments = @main_user_tweet.shop_user_comments
        @comments = main_user_comments # | shop_user_comments
        #@comments.sort! { |a, b| b.created_at <=> a.created_at }
        render "main_user_tweets/show"
      end
    else
      if @main_user_comment.save 
        redirect_to shop_user_tweet_path(@main_user_comment.shop_user_tweet)
      else
        @shop_user_tweet = @main_user_commentable
        main_user_comments = @main_user_tweet.main_user_comments
        shop_user_comments = @main_user_tweet.shop_user_comments
        @comments = main_user_comments | shop_user_comments
        @comments.sort! { |a, b| b.created_at <=> a.created_at }
        render "shop_user_tweets/show"
      end
    end
  end



  private
  def main_user_comment_params
    params.require(:main_user_comment).permit(:comment).merge(main_user_id: current_main_user.id)
  end



end
