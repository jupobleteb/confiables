json.array!(@laborales) do |laboral|
  json.extract! laboral, :id, :datoslaborales_id, :correo, :telefono_id, :fechacontrato, :descripcion, :direccion_id, :usuario_id, :empresa_id
  json.url laboral_url(laboral, format: :json)
end
