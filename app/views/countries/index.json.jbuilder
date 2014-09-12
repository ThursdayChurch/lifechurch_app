json.array!(@countries) do |country|
  json.extract! country, :id, :name, :abbrev
  json.url country_url(country, format: :json)
end
