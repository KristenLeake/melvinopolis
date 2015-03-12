json.array!(@commissions) do |commission|
  json.extract! commission, :id, :character, :variation, :notes, :thumbnail, :year_id, :show_id, :genre_id
  json.url commission_url(commission, format: :json)
end
