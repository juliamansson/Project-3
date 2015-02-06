json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :status, :price, :quantity, :date
  json.url order_url(order, format: :json)
end
