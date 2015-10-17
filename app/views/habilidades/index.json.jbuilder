json.array!(@habilidades) do |habilidad|
  json.extract! habilidad, :id, :habilidad_id, :nombre, :descripcion, :usuario_id
  json.url habilidad_url(habilidad, format: :json)
end
