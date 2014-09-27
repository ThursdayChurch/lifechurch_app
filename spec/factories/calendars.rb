# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar do
    calendar_name "MyString"
    calendar_date "2014-09-26"
    recurring_day "MyString"
    recurring_on false
  end
end
