json.array!(@events) do |event|
  json.extract! event, :id, :event_name, :event_date, :event_time, :contact_email, :location, :contact_person, :description, :remove_event_date, :display_main_page, :event_start_time, :use_form_button, :which_form, :download_link, :share_download, :use_contact, :recurring_day, :recurring_on, :advertisement, :internal_link_url, :internal_link, :no_expiry, :template_selected, :full_event, :event_type, :summary, :force_on_main_page, :enable_disable_ad, :highlight, :scheduled_when, :schedule, :next_occurence, :options, :slug
  json.url event_url(event, format: :json)
end
