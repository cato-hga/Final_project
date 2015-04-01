json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_digest, :avatar
  json.url user_url(user, format: :json)
end
