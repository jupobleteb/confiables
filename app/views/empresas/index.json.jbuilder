json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :rut, :nombre, :acronimo, :rubro, :rutrepresentante, :email, :telefono_id, :direccion_id, :usuario_id
  json.url empresa_url(empresa, format: :json)
end
