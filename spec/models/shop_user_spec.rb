require 'rails_helper'

RSpec.describe ShopUser, type: :model do
  before do
    @shop_user = FactoryBot.build(:shop_user)
  end

  context '保存できる場合' do
    describe 'ユーザー新規登録' do
      it '全ての項目が存在すれば登録できること' do
        expect(@shop_user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上でかつ半角英数字が混合されていれば登録できる' do
        @shop_user.password = '123qwe'
        @shop_user.password_confirmation = '123qwe'
        expect(@shop_user).to be_valid
      end
      it 'profileが空でも登録できること' do
        @shop_user.profile = ''
        expect(@shop_user).to be_valid
      end
      it 'phone_numberが10桁の数値のみなら登録できる' do
        @shop_user.phone_number = '0001010001'
        expect(@shop_user).to be_valid
      end
      it 'phone_numberが11桁の数値のみなら登録できる' do
        @shop_user.phone_number = '09011111111'
        expect(@shop_user).to be_valid
      end
      it 'shop_linkが空でも登録できること' do
        @shop_user.shop_link = ''
        expect(@shop_user).to be_valid
      end
      it '建物名が空でも登録できる' do
        @shop_user.building_name = ''
        expect(@shop_user).to be_valid
      end
    end

    context '保存できない場合' do
      it 'shop_nameが空では登録できない' do
        @shop_user.shop_name = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Shop name can't be blank")
      end

      it 'emailが空では登録できない' do
        @shop_user.email = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合登録できない' do
        @shop_user.save
        another_user = FactoryBot.build(:shop_user)
        another_user.email = @shop_user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに@が含まれていないと登録できないこと' do
        @shop_user.email = 'testtest'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Email is invalid')
      end

      it 'passwordが空では登録できない' do
        @shop_user.password = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @shop_user.password_confirmation = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordが5文字以下では登録できない' do
        @shop_user.password = '123qw'
        @shop_user.password_confirmation = '123qw'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @shop_user.password = '123qwe'
        @shop_user.password_confirmation = '1234567'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "passwordは半角英数字混合でなければ登録できないこと" do
        @shop_user.password = 'aaaaaa'
        @shop_user.password_confirmation = 'aaaaaa'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Password is invalid')
      end
      it "passwordは全角では登録できないこと" do
        @shop_user.password = 'ａａａａａａ'
        @shop_user.password_confirmation = 'ａａａａａ'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Password is invalid')
      end
      it "passwordは数字のみでは登録できないこと" do
        @shop_user.password = '111111'
        @shop_user.password_confirmation = '111111'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Password is invalid')
      end

      it 'postal_codeが空では登録できない' do
        @shop_user.postal_code = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Postal code can't be blank")
      end
      it 'prefecturesが空では登録できない' do
        @shop_user.prefectures = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Prefectures can't be blank")
      end
      it 'cityが空では登録できない' do
        @shop_user.city = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("City can't be blank")
      end
      it 'addressが空では登録できない' do
        @shop_user.address = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Address can't be blank")
      end

      it 'phone_numberが空では登録できない' do
        @shop_user.phone_number = ''
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'phone_numberが数値以外では登録できない' do
        @shop_user.phone_number = 'abcdefghijk'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Phone number is invalid')
      end
      it 'phone_numberが9桁以下では登録できない' do
        @shop_user.phone_number = '123456789'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Phone number is invalid')
      end
      it 'phone_numberが12桁以上では登録できない' do
        @shop_user.phone_number = '123456789012'
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include('Phone number is invalid')
      end

      it 'profileが301文字以上では登録できない' do
        @shop_user.profile = 'あ' * 301
        @shop_user.valid?
        expect(@shop_user.errors.full_messages).to include("Profile is too long (maximum is 300 characters)")
      end
    end
  end
end
