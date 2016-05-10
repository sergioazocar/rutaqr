json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :slug, :nombre
  json.url categoria_url(categoria, format: :json)
end
