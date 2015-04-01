json.array!(@gift_givens) do |gift_given|
  json.extract! gift_given, :id, :gift_name
  json.url gift_given_url(gift_given, format: :json)
end
