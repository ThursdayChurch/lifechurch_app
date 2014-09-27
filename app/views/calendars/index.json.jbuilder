json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :calendar_name, :calendar_date, :recurring_day, :recurring_on
  json.url calendar_url(calendar, format: :json)
end
