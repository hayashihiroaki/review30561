FactoryBot.define do
  factory :review do
    content { '内容' }
    score { 3 }
    association :user
    association :shop
  end
end
