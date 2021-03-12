FactoryBot.define do
  factory :shop_user_tweet do
    text { 'テスト' }
    association :shop_user
  end
end
