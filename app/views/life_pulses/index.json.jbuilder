json.array!(@life_pulses) do |life_pulse|
  json.extract! life_pulse, :id, :keywords, :from_pastor_desk, :template_selected, :content, :title, :summary, :flickr_id, :slug
  json.url life_pulse_url(life_pulse, format: :json)
end
