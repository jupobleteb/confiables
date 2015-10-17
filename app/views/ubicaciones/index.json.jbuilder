json.array!(@ubicaciones) do |ubicacion|
  json.extract! ubicacion, :id, :ubicacion_id, :longitud, :latitud, :fecha, :usuario_id
  json.url ubicacion_url(ubicacion, format: :json)
end
