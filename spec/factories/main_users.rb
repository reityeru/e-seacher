FactoryBot.define do
  factory :main_user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { '1234Qwer' }
    password_confirmation { '1234Qwer' }
    last_name             { '山田' }
    first_name            { '太郎' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birthday              { Faker::Date.between(from: '1930-01-01', to: '2015-12-31') }
    gender                { '男性' }
    phone_number          { '09011111111' }
    profile               { 'テストプロフィール' }
  end
end
