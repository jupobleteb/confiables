json.array!(@perfiles) do |perfil|
  json.extract! perfil, :id, :perfil_id, :nombre, :descripcion, :usuario_id, :permisos_id
  json.url perfil_url(perfil, format: :json)
end
