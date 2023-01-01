FactoryBot.define do
  factory :job do
    shop_name {'テスト'}
    occupation_id {'2'}
    salary {'1000'}
    ticket_id {'2'}
    domitory_id {'2'}
    phone_number {'08012121212'}
    text {Faker::Lorem.paragraph}
    association :user
  end
end