json.array!(@foods) do |food|
  json.extract! food, :id, :name, :description, :price
  json.url food_url(food, format: :json)
end
