json.array!(@speakers_pictures) do |speakers_picture|
  json.extract! speakers_picture, :id, :speaker_image, :speaker_id, :image_processed
  json.url speakers_picture_url(speakers_picture, format: :json)
end
