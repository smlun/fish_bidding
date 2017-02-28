json.extract! sale_post, :id, :name, :bid, :size, :diet, :description, :duration, :created_at, :updated_at
json.url sale_post_url(sale_post, format: :json)
