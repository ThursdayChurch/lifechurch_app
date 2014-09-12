json.array!(@life_pulses_pictures) do |life_pulses_picture|
  json.extract! life_pulses_picture, :id, :life_pulse_id, :life_pulse_image, :title, :summary, :image_processed, :main_page
  json.url life_pulses_picture_url(life_pulses_picture, format: :json)
end
