require 'rails_helper'

RSpec.describe MainUserTweet, type: :model do
  before do
    @main_user_tweet = FactoryBot.build(:main_user_tweet)
    @main_user_tweet.main_user_tweet_images = fixture_file_upload('spec/fixtures/test_image.png', 'spec/fixtures/test2_image.png')
  end

  context '保存できる場合' do
    describe '一般ユーザー投稿' do
      it '全ての項目が存在すれば投稿できること' do
        expect(@main_user_tweet).to be_valid
      end
      it 'take_outが空でも投稿できること' do
        @main_user_tweet.take_out = ''
        expect(@main_user_tweet).to be_valid
      end
      it 'take_outが無でも投稿できること' do
        @main_user_tweet.take_out = '無'
        expect(@main_user_tweet).to be_valid
      end
      it 'shop_userが紐ついてなくても投稿できること' do
        @main_user_tweet.shop_user = nil
        expect(@main_user_tweet).to be_valid
      end
      it 'main_user_tweet_imagesが空でも投稿できる' do
        @main_user_tweet.main_user_tweet_images = nil
        expect(@main_user_tweet).to be_valid
      end
    end

    context '保存できない場合' do
      it 'shop_nameが空では投稿できない' do
        @main_user_tweet.shop_name = ''
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include("Shop name can't be blank")
      end

      it 'textが空では投稿できない' do
        @main_user_tweet.text = ''
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include("Text can't be blank")
      end
      it 'textが301文字以上では投稿できない' do
        @main_user_tweet.text = 'あ' * 301
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include('Text is too long (maximum is 300 characters)')
      end

      it 'prefectureが紐付いていないと投稿できないこと' do
        @main_user_tweet.prefecture = nil
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include("Prefecture must exist")
      end
      it 'city紐付いていないと投稿できないこと' do
        @main_user_tweet.city = nil
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include("City must exist")
      end

      it 'genreの選択が「---」では投稿できないこと' do
        @main_user_tweet.genre_id = 1
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include('Genre must be other than 1')
      end

      it 'main_userが紐付いていないと投稿できないこと' do
        @main_user_tweet.main_user = nil
        @main_user_tweet.valid?
        expect(@main_user_tweet.errors.full_messages).to include('Main user must exist')
      end
    end
  end
end
