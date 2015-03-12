json.array!(@images) do |image|
  json.extract! image, :id, :costume_id, :commission_id
  json.url image_url(image, format: :json)
end
