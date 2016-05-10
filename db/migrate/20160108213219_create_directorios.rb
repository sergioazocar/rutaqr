class CreateDirectorios < ActiveRecord::Migration
  def change
    create_table :directorios do |t|
      t.string :slug
      t.string :foto_perfil
      t.string :foto_portada
      t.string :nombre
      t.text :descripcion_corta
      t.text :descripcion_larga
      t.string :telefono
      t.string :celular
      t.string :correo
      t.string :pais
      t.string :ciudad
      t.string :direccion
      t.string :sitio_web
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :latitud
      t.string :longitud
      t.string :codigo_qr
      t.references :categoria, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
