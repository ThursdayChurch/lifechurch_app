json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :name, :description, :end_month, :start_month, :schedule_image, :image_processed, :url, :slug
  json.url schedule_url(schedule, format: :json)
end
