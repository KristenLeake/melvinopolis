json.array!(@shows) do |show|
  json.extract! show, :id, :series
  json.url show_url(show, format: :json)
end
