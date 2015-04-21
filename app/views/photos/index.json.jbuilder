json.array!(@photos) do |photo|
  json.extract! photo, :id, :costume_id, :commission_id, :picture, :caption
  json.url photo_url(photo, format: :json)
end
