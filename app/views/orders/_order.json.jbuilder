json.extract! order, :id, :user_id, :order_tax, :order_total, :created_at, :updated_at
json.url order_url(order, format: :json)
