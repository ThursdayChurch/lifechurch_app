json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :title, :first_name, :last_name, :from_church, :description, :church_staff_id, :from_church_url
  json.url speaker_url(speaker, format: :json)
end
