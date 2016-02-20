json.array!(@vehicle_brands) do |vehicle_brand|
  json.extract! vehicle_brand, :id, :name
  json.url vehicle_brand_url(vehicle_brand, format: :json)
end
