json.array!(@shopingcarts) do |shopingcart|
  json.extract! shopingcart, :id, :counter
  json.url shopingcart_url(shopingcart, format: :json)
end
