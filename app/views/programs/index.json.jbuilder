json.array!(@programs) do |program|
  json.extract! program, :id, :program_name, :contact_email, :location, :contact_person, :description, :remove_program_date, :display_main_page, :event_id, :advertisement_id, :slug
  json.url program_url(program, format: :json)
end
