json.array!(@ministry_children) do |ministry_child|
  json.extract! ministry_child, :id, :name, :contact_person, :contact_email, :description, :display_rank, :ta1, :ta2, :ta3, :ta4, :ta5, :advert_main_page, :ministry_id, :slug
  json.url ministry_child_url(ministry_child, format: :json)
end
