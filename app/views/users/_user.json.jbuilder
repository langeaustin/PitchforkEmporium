json.extract! user, :id, :full_name, :province, :address, :order_id, :created_at, :updated_at
json.url user_url(user, format: :json)
