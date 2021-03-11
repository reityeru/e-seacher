require 'rails_helper'

RSpec.describe ShopUserTweet, type: :model do
  before do
    @shop_user_tweet = FactoryBot.build(:shop_user_tweet)
    @shop_user_tweet.shop_user_tweet_images = fixture_file_upload('spec/fixtures/test_image.png', "spec/fixtures/test2_image.png")
  end

  describe '店舗ユーザーの投稿' do
    context "店舗ユーザーが投稿できる場合" do
      it "テキストがあれば投稿できる" do
        expect(@shop_user_tweet).to be_valid
      end
      it 'shop_user_tweet_imagesが空でも投稿できる' do
        @shop_user_tweet.shop_user_tweet_images = nil
        expect(@shop_user_tweet).to be_valid
      end
    end

    context "店舗ユーザーが投稿できない場合" do
      it "テキストが空では投稿できない" do
        @shop_user_tweet.text = ""
        @shop_user_tweet.valid?
        expect(@shop_user_tweet.errors.full_messages).to include("Text can't be blank")
      end
      it "textが301文字以上では投稿できない" do
        @shop_user_tweet.text = 'あ' * 301
        @shop_user_tweet.valid?
        expect(@shop_user_tweet.errors.full_messages).to include("Text is too long (maximum is 300 characters)")
      end

      it "ユーザーが紐付いていなければ投稿できない" do
        @shop_user_tweet.shop_user = nil
        @shop_user_tweet.valid?
        expect(@shop_user_tweet.errors.full_messages).to include("Shop user must exist")
      end
    end
  end
end
