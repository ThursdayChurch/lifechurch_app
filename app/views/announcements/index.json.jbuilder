json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :message, :starts_at, :ends_at, :green, :colours
  json.url announcement_url(announcement, format: :json)
end
