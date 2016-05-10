class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :slug
      t.string :titulo
      t.string :foto_portada
      t.text :contenido
      t.string :estado

      t.timestamps null: false
    end
  end
end
