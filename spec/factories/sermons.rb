# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sermon do
    date_of_sermon "2014-09-12"
    title "MyString"
    description "MyText"
    category "MyString"
    audio_url "MyString"
    video_url "MyString"
    display_until "2014-09-12"
    speaker_id 1
    members_only false
    url "MyString"
    slug "MyString"
  end
end
