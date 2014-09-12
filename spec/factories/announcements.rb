# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :announcement do
    message "MyText"
    starts_at "2014-09-12 00:18:24"
    ends_at "2014-09-12 00:18:24"
    green false
    colours "MyString"
  end
end
