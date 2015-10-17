json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usuario_id, :correo, :nombreUsuario, :nombre, :apellido, :genero, :fechaNacimiento, :facebook, :twitter, :linkedin, :youtube, :telefono, :direccion
end
