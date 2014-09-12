json.array!(@ministry_children_pictures) do |ministry_children_picture|
  json.extract! ministry_children_picture, :id, :ministrychild_image, :image_processed, :ministrychild_id, :ministry_id
  json.url ministry_children_picture_url(ministry_children_picture, format: :json)
end
