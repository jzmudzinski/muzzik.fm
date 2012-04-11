FactoryGirl.define do
  factory :song do
    title { Faker::HipsterIpsum.sentence(rand(4) + 1) }
    file_path 'path/to/song/file.mp3'
  end
end
