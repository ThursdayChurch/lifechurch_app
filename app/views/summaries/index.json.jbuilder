json.array!(@summaries) do |summary|
  json.extract! summary, :id, :what_we_believe
  json.url summary_url(summary, format: :json)
end
