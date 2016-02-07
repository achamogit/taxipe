json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :name, :description, :status
  json.url modulo_url(modulo, format: :json)
end
