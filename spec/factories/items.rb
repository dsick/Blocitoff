FactoryGirl.define do
  factory :item do
    name Faker::Lorem.sentence
    user nil
  end
end
