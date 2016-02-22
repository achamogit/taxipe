json.array!(@drivers) do |driver|
  json.extract! driver, :id, :firstname, :lastname, :age, :datebirthday, :document, :license, :yearexperience, :phone, :state_id, :rating
  json.url driver_url(driver, format: :json)
end
