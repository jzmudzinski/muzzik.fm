FactoryGirl.define do
  factory :playlist do
    title { Faker::HipsterIpsum.sentence(rand(3) + 1) }
    description { Faker::HipsterIpsum.paragraphs(rand(2) + 1).join(" ") }
  end
end
