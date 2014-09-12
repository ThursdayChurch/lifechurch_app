json.array!(@life_pulses_stocks_pictures) do |life_pulses_stocks_picture|
  json.extract! life_pulses_stocks_picture, :id, :life_pulse_id, :life_pulse_image, :title, :summary, :image_processed, :main_page, :life_pulse_stock_image
  json.url life_pulses_stocks_picture_url(life_pulses_stocks_picture, format: :json)
end
