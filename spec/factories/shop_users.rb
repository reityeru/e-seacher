FactoryBot.define do
  factory :shop_user do
    shop_name             { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { '1234Qwer' }
    password_confirmation { '1234Qwer' }
    postal_code           { '123-4567' }
    address               { '青山1-1-1' }
    building_name         { '柳ビル103' }
    phone_number          { '09011111111' }
    profile               { 'テストプロフィール' }
    shop_link             { 'https://e-seacher.herokuapp.com/' }
    association :prefecture
    association :city
  end
end
