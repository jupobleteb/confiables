json.array!(@slas) do |sla|
  json.extract! sla, :id, :sla_id, :nombre, :descripcion, :porcentajeImportacia, :activo
  json.url sla_url(sla, format: :json)
end
