FactoryGirl.define do
  factory(:story) do
    title('Story')
  end
  factory :sentence do
    content 'stuff'
    image_id 1
    author 'Fred'
    image_content 'bicycle'
  end
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
  end
end
