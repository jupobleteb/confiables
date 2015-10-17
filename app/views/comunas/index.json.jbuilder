json.array!(@comunas) do |comuna|
  json.extract! comuna, :id, :comuna_id, :nombre, :region, :pais
  json.url comuna_url(comuna, format: :json)
end
