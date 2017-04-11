FactoryGirl.define do
  factory :room do
    title { Faker::Internet.unique.email }
    description "hello"
  end
end
