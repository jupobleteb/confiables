json.array!(@calidades) do |calidad|
  json.extract! calidad, :id, :calidad_id, :valor, :sla_id, :contrato_id
  json.url calidad_url(calidad, format: :json)
end
