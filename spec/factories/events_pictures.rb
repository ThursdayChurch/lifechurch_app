# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :events_picture do
    title "MyString"
    event_image "MyString"
    linked_event "MyString"
    description "MyText"
    event_id 1
    eventimage "MyString"
    image_processed false
  end
end
