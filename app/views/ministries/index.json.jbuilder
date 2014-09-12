json.array!(@ministries) do |ministry|
  json.extract! ministry, :id, :name, :contact_person, :contact_email, :description, :display_rank, :ta1, :ta2, :ta3, :ta4, :ta5, :advert_main_page, :slug
  json.url ministry_url(ministry, format: :json)
end
