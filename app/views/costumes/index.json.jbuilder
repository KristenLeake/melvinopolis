json.array!(@costumes) do |costume|
  json.extract! costume, :id, :character, :variation, :notes, :awards, :thumbnail, :year_id, :show_id, :genre_id
  json.url costume_url(costume, format: :json)
end
