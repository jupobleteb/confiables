json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :categoria_id, :nombre, :descripcion, :laboral_id
  json.url categoria_url(categoria, format: :json)
end
