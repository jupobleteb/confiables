json.array!(@experiencias) do |experiencia|
  json.extract! experiencia, :id, :experiencia_id, :fechaInicio, :fechaFin, :rubro, :cargo, :descripcion, :laboral_id, :empresa_id
  json.url experiencia_url(experiencia, format: :json)
end
