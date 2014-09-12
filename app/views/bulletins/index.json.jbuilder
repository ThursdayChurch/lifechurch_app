json.array!(@bulletins) do |bulletin|
  json.extract! bulletin, :id, :name, :description, :display_till, :display_start, :advert_main_page, :bulletin_image, :url, :members_only, :image_processed, :slug
  json.url bulletin_url(bulletin, format: :json)
end
