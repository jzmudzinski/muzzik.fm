FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "testpassword123"
    password_confirmation {|u| u.password}
  end
end
