FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "My #{n}th Post" }
  end
end
