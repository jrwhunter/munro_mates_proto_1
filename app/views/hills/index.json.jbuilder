json.array!(@hills) do |hill|
  json.extract! hill, :number, :name, :other_info, :origin, :book, :height, :grid_ref, :map
  json.url hill_url(hill, format: :json)
end