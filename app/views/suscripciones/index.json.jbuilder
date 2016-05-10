json.array!(@suscripciones) do |suscripcion|
  json.extract! suscripcion, :id, :fecha_inicio, :fecha_termino, :precio, :estado, :usuario_id
  json.url suscripcion_url(suscripcion, format: :json)
end
