json.array!(@climbs) do |climb|
  json.extract! climb, :user_name, :hill_number, :date, :comments
  json.url climb_url(climb, format: :json)
end