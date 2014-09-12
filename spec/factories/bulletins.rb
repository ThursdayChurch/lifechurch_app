# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bulletin do
    name "MyString"
    description "MyText"
    display_till "2014-09-12"
    display_start "2014-09-12"
    advert_main_page false
    bulletin_image "MyString"
    url "MyString"
    members_only false
    image_processed false
    slug "MyString"
  end
end
