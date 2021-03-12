FactoryBot.define do
  factory :main_user_tweet do
    shop_name             { Faker::Name.initials(number: 2) }
    text                  { 'テスト' }
    prefectures           { '神奈川県' }
    city                  { '横浜市緑区' }
    genres_id             { 2 }
    take_out              { '有' }
    association :main_user
    association :shop_user
  end
end
