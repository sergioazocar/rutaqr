class CreateNoticiaTieneCategorias < ActiveRecord::Migration
  def change
    create_table :noticia_tiene_categorias do |t|
      t.references :noticia, index: true, foreign_key: true
      t.references :categoria, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
