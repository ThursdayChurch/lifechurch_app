# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ministry_children_picture do
    ministrychild_image "MyString"
    image_processed false
    ministrychild_id 1
    ministry_id 1
  end
end
