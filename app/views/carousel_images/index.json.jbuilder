json.array!(@carousel_images) do |carousel_image|
  json.extract! carousel_image, :id, :event_id, :advertisement_id, :carousel_image_name
  json.url carousel_image_url(carousel_image, format: :json)
end
