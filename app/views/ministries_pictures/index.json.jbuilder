json.array!(@ministries_pictures) do |ministries_picture|
  json.extract! ministries_picture, :id, :ministry_image, :image_processed, :ministries_id, :ministry_id
  json.url ministries_picture_url(ministries_picture, format: :json)
end
