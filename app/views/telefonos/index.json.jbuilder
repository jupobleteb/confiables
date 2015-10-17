json.array!(@telefonos) do |telefono|
  json.extract! telefono, :id, :telefono_id, :codpais, :codciudad, :numero
end
