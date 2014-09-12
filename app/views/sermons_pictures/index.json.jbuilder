json.array!(@sermons_pictures) do |sermons_picture|
  json.extract! sermons_picture, :id, :sermon_image, :image_processed, :sermons_id
  json.url sermons_picture_url(sermons_picture, format: :json)
end
