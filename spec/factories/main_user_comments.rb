FactoryBot.define do
  factory :main_user_comment do
    factory :main_user_tweet_main_user_comment do
      association :main_user
      association :main_usesr_tweet_commentable, factory: :main_user_tweet
      commentable_type { 'MainUserTweet' }
      comment          { 'テストコメント' }
    end

    factory :shop_user_tweet_main_user_comment do
      association :main_user
      association :main_usesr_tweet_commentable, factory: :main_user_tweet
      commentable_type { 'ShopUserTweet' }
      comment          { 'テストコメント' }
    end

  end
end
