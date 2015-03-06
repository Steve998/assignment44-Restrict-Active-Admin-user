json.array!(@orders) do |order|
  json.extract! order, :id, :order_number, :order_quantity, :order_item, :order_customer
  json.url order_url(order, format: :json)
end
