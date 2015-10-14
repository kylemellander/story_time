FactoryGirl.define do
  factory(:story) do
    title('Story')
  end
  factory :sentence do
    content 'stuff'
    image_id 1
    user_id 1
    image_content 'bicycle'
  end
end
