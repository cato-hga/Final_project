json.array!(@special_occasions) do |special_occasion|
  json.extract! special_occasion, :id, :name
  json.url special_occasion_url(special_occasion, format: :json)
end
