# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :church_staffs_picture do
    first_name "MyString"
    last_name "MyString"
    image "MyString"
    church_staff_id 1
    image_processed false
    staff_image "MyString"
  end
end
