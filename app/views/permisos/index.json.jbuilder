json.array!(@permisos) do |permiso|
  json.extract! permiso, :id, :permisos_id, :tipo, :descripcion, :perfil_id
  json.url permiso_url(permiso, format: :json)
end
