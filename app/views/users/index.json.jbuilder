json.array!(@users) do |user|
  json.extract! user, :name, :email, :password, :club, :visible
  json.url user_url(user, format: :json)
end