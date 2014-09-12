json.array!(@church_staffs) do |church_staff|
  json.extract! church_staff, :id, :first_name, :last_name, :spouse_first_name, :title, :started_service, :description, :contact_email, :image, :birthday, :blog, :url, :phone_ext, :phone_number, :full_name, :email_id, :facebook, :twitter, :google_plus, :linked_in, :birth_location, :category, :rank
  json.url church_staff_url(church_staff, format: :json)
end
