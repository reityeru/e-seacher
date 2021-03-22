FactoryBot.define do
  factory :main_user_tweet do
    shop_name             { Faker::Name.initials(number: 2) }
    text                  { 'テスト' }
    genre_id              { 2 }
    take_out              { '有' }
    association :main_user
    association :shop_user
    association :prefecture
    association :city
  end
end
