json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :event_id, :advertisement_name, :advertisement_date, :advertisement_time, :contact_email, :location, :contact_person, :description, :remove_advertisement_date, :display_main_page, :advertisement_start_time, :use_form_button, :which_form, :download_link, :share_download, :use_contact, :recurring_day, :recurring_on, :advertisement, :internal_link_url, :internal_link, :no_expiry, :template_selected, :full_advertisement, :advertisement_type, :force_on_main_page, :enable_disable_ad, :scheduled_when, :schedule, :next_occurence, :options, :slug, :create_own_page
  json.url advertisement_url(advertisement, format: :json)
end
