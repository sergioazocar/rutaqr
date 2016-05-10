json.array!(@directorios) do |directorio|
  json.extract! directorio, :id, :slug, :foto_perfil, :foto_portada, :nombre, :descripcion_corta, :descripcion_larga, :telefono, :celular, :correo, :pais, :ciudad, :direccion, :sitio_web, :facebook, :twitter, :youtube, :latitud, :longitud, :codigo_qr, :categoria_id, :usuario_id
  json.url directorio_url(directorio, format: :json)
end
