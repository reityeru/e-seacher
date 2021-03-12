require 'rails_helper'

RSpec.describe MainUser, type: :model do
  before do
    @main_user = FactoryBot.build(:main_user)
  end

  context '保存できる場合' do
    describe 'ユーザー新規登録' do
      it '全ての項目が存在すれば登録できること' do
        expect(@main_user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上でかつ半角英数字が混合されていれば登録できる' do
        @main_user.password = '123qwe'
        @main_user.password_confirmation = '123qwe'
        expect(@main_user).to be_valid
      end
      it 'profileが空でも登録できること' do
        @main_user.profile = ''
        expect(@main_user).to be_valid
      end
      it 'phone_numberが10桁の数値のみなら登録できる' do
        @main_user.phone_number = '0001010001'
        expect(@main_user).to be_valid
      end
      it 'phone_numberが11桁の数値のみなら登録できる' do
        @main_user.phone_number = '09011111111'
        expect(@main_user).to be_valid
      end
      it 'genderが女性でも登録できる' do
        @main_user.gender = '女性'
        expect(@main_user).to be_valid
      end
    end

    context '保存できない場合' do
      it 'nicknameが空では登録できない' do
        @main_user.nickname = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'emailが空では登録できない' do
        @main_user.email = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合登録できない' do
        @main_user.save
        another_user = FactoryBot.build(:main_user)
        another_user.email = @main_user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに@が含まれていないと登録できないこと' do
        @main_user.email = 'testtest'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Email is invalid')
      end

      it 'passwordが空では登録できない' do
        @main_user.password = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @main_user.password_confirmation = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordが5文字以下では登録できない' do
        @main_user.password = '123qw'
        @main_user.password_confirmation = '123qw'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @main_user.password = '123qwe'
        @main_user.password_confirmation = '1234567'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordは半角英数字混合でなければ登録できないこと' do
        @main_user.password = 'aaaaaa'
        @main_user.password_confirmation = 'aaaaaa'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Password is invalid')
      end
      it "passwordは全角では登録できないこと\b" do
        @main_user.password = 'ａａａａａａ'
        @main_user.password_confirmation = 'ａａａａａ'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordは数字のみでは登録できないこと' do
        @main_user.password = '111111'
        @main_user.password_confirmation = '111111'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Password is invalid')
      end

      it 'last_nameが空では登録できない' do
        @main_user.last_name = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Last name can't be blank", 'Last name is invalid')
      end
      it 'first_nameが空では登録できない' do
        @main_user.first_name = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("First name can't be blank", 'First name is invalid')
      end
      it 'last_name_kanaが空では登録できない' do
        @main_user.last_name_kana = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Last name kana can't be blank", 'Last name kana is invalid')
      end
      it 'first_name_kanaが空では登録できない' do
        @main_user.first_name_kana = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("First name kana can't be blank", 'First name kana is invalid')
      end
      it 'last_name_kanaが全角カタカナでないと登録できないこと' do
        @main_user.last_name_kana = '山田'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Last name kana is invalid')
      end
      it 'first_name_kanaが全角カタカナでないと登録できないこと' do
        @main_user.first_name_kana = '太郎'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('First name kana is invalid')
      end
      it 'last_nameが全角（漢字・ひらがな・カタカナ）でないと登録できないこと' do
        @main_user.last_name_kana = 'yamada'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Last name kana is invalid')
      end
      it 'first_nameが全角（漢字・ひらがな・カタカナ）でないと登録できないこと' do
        @main_user.first_name_kana = 'tarou'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('First name kana is invalid')
      end

      it 'birthdayが空では登録できない' do
        @main_user.birthday = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Birthday can't be blank")
      end

      it 'genderが空では登録できない' do
        @main_user.gender = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Gender can't be blank")
      end

      it 'phone_numberが空では登録できない' do
        @main_user.phone_number = ''
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'phone_numberが数値以外では購入できない' do
        @main_user.phone_number = 'abcdefghijk'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Phone number is invalid')
      end
      it 'phone_numberが9桁以下では購入できない' do
        @main_user.phone_number = '123456789'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Phone number is invalid')
      end
      it 'phone_numberが12桁以上では購入できない' do
        @main_user.phone_number = '123456789012'
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Phone number is invalid')
      end

      it 'profileが301文字以上では登録できない' do
        @main_user.profile = 'あ' * 301
        @main_user.valid?
        expect(@main_user.errors.full_messages).to include('Profile is too long (maximum is 300 characters)')
      end
    end
  end
end
