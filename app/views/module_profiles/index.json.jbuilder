json.array!(@module_profiles) do |module_profile|
  json.extract! module_profile, :id, :idmodulo, :idprofile
  json.url module_profile_url(module_profile, format: :json)
end
