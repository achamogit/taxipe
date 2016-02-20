json.array!(@vehicle_models) do |vehicle_model|
  json.extract! vehicle_model, :id, :name, :vehicle_brand_id
  json.url vehicle_model_url(vehicle_model, format: :json)
end
