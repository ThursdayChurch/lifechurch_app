# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_time do
    day "MyString"
    start_time "2014-09-12 00:18:58"
    end_time "2014-09-12 00:18:58"
    service_name "MyString"
  end
end
