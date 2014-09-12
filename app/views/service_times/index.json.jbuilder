json.array!(@service_times) do |service_time|
  json.extract! service_time, :id, :day, :start_time, :end_time, :service_name
  json.url service_time_url(service_time, format: :json)
end
