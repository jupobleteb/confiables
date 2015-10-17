json.array!(@socios) do |socio|
  json.extract! socio, :id, :socio_id, :cargo, :descripcion, :usuario_id
  json.url socio_url(socio, format: :json)
end
