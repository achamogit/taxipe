json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vehicle_brand_id, :vehicle_model_id, :placa, :year, :numberseat, :vehicle_type_id, :state_id
  json.url vehicle_url(vehicle, format: :json)
end
