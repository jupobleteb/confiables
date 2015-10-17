json.array!(@direcciones) do |direccion|
  json.extract! direccion, :id, :direccion_id, :direccion, :numero, :complemento, :codPostal, :comuna
  
end
