json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :contrato_id, :prestador, :nombre, :descripcion, :fechaInicio, :fechaFin, :clausulaTermino, :evalucion, :valorservicio, :comision, :usuario_id
  json.url contrato_url(contrato, format: :json)
end
