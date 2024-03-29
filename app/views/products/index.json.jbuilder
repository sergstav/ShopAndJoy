json.array!(@products) do |product|
  json.extract! product, :id, :title, :category, :description, :image_url, :amount, :price
  json.url product_url(product, format: :json)
end
