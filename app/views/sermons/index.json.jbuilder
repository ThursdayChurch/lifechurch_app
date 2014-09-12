json.array!(@sermons) do |sermon|
  json.extract! sermon, :id, :date_of_sermon, :title, :description, :category, :audio_url, :video_url, :display_until, :speaker_id, :members_only, :url, :slug
  json.url sermon_url(sermon, format: :json)
end
