json.array!(@pruebas) do |prueba|
  json.extract! prueba, :id, :datobinary, :datobollean, :datodate, :datodecimal, :datofloat, :datointeger, :datotimestamp, :datotext, :datostring, :datofecha
  json.url prueba_url(prueba, format: :json)
end
