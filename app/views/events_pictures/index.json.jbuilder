json.array!(@events_pictures) do |events_picture|
  json.extract! events_picture, :id, :title, :event_image, :linked_event, :description, :event_id, :eventimage, :image_processed
  json.url events_picture_url(events_picture, format: :json)
end
