json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :slug, :titulo, :foto_portada, :contenido, :estado
  json.url noticia_url(noticia, format: :json)
end
