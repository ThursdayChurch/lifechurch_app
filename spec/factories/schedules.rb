# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule do
    name "MyString"
    description "MyText"
    end_month "2014-09-12"
    start_month "2014-09-12"
    schedule_image "MyString"
    image_processed false
    url "MyString"
    slug "MyString"
  end
end
