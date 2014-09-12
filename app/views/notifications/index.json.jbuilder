json.array!(@notifications) do |notification|
  json.extract! notification, :id, :email_1, :email_2, :send_email_2, :open_site
  json.url notification_url(notification, format: :json)
end
