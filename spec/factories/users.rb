FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    username {Faker::Internet.user_name}
    password "testtest"
    password_confirmation "testtest"
  end
end
