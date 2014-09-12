json.array!(@staff_ranks) do |staff_rank|
  json.extract! staff_rank, :id, :ranking, :category
  json.url staff_rank_url(staff_rank, format: :json)
end
