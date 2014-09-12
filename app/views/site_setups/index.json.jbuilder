json.array!(@site_setups) do |site_setup|
  json.extract! site_setup, :id, :youtube, :facebook, :video_stream, :twitter, :life_pulse, :leaders_blog, :store, :video, :articles, :shutdown
  json.url site_setup_url(site_setup, format: :json)
end
