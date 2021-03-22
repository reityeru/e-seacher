require 'rails_helper'

RSpec.describe MainUserComment, type: :model do
    let(:main_user_tweet_main_user_comment) { FactoryBot.create(:main_user_tweet_main_user_comment) }
    let(:shop_user_tweet_main_user_comment) { FactoryBot.create(:shop_user_tweet_main_user_comment) }

  context '保存できる場合' do
    describe '一般ユーザーコメント' do
      it '全ての項目が存在すれば一般ユーザーの投稿にコメントできること' do
        expect(main_user_tweet_main_user_comment).to be_valid
      end
    end
  end
end
