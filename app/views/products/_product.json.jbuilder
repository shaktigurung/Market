json.extract! product, :id, :name, :description, :image, :quantity, :price, :condition, :created_at, :updated_at
json.url product_url(product, format: :json)
