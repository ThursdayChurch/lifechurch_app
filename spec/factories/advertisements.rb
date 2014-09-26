# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :advertisement do
    event_id 1
    advertisement_name "MyString"
    advertisement_date "2014-09-26"
    advertisement_time "MyString"
    contact_email "MyString"
    location "MyString"
    contact_person "MyString"
    description "MyText"
    remove_advertisement_date "2014-09-26"
    display_main_page false
    advertisement_start_time "2014-09-26 14:03:05"
    use_form_button false
    which_form 1
    download_link "MyString"
    share_download false
    use_contact false
    recurring_day "MyString"
    recurring_on false
    advertisement false
    internal_link_url "MyString"
    internal_link false
    no_expiry false
    template_selected 1
    full_advertisement false
    advertisement_type 1
    force_on_main_page false
    enable_disable_ad false
    scheduled_when "MyText"
    schedule "MyText"
    next_occurence "2014-09-26 14:03:05"
    options "MyText"
    slug "MyString"
    create_own_page ""
  end
end
