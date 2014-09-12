# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    event_name "MyString"
    event_date "2014-09-12"
    event_time "MyString"
    contact_email "MyString"
    location "MyString"
    contact_person "MyString"
    description "MyText"
    remove_event_date "2014-09-12"
    display_main_page false
    event_start_time "2014-09-12 00:18:39"
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
    full_event false
    event_type 1
    summary "MyString"
    force_on_main_page false
    enable_disable_ad false
    highlight false
    scheduled_when "MyText"
    schedule "MyText"
    next_occurence "2014-09-12 00:18:39"
    options "MyText"
    slug "MyString"
  end
end
