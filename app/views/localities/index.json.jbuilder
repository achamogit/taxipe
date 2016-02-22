json.array!(@localities) do |locality|
  json.extract! locality, :id, :description, :state_id
  json.url locality_url(locality, format: :json)
end
