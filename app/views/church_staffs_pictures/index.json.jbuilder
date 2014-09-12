json.array!(@church_staffs_pictures) do |church_staffs_picture|
  json.extract! church_staffs_picture, :id, :first_name, :last_name, :image, :church_staff_id, :image_processed, :staff_image
  json.url church_staffs_picture_url(church_staffs_picture, format: :json)
end
