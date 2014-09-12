json.array!(@videos) do |video|
  json.extract! video, :id, :name, :contact_person, :contact_email, :description, :display_rank, :ta1, :ta2, :ta3, :ta4, :ta5, :advert_main_page, :title, :url, :slug
  json.url video_url(video, format: :json)
end
