# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :speakers_picture do
    speaker_image "MyString"
    speaker_id 1
    image_processed false
  end
end
