json.extract! product, :id, :name, :detail, :price, :photo, :created_at, :updated_at
json.url product_url(product, format: :json)
