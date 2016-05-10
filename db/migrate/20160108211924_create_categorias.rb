class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :slug
      t.string :nombre

      t.timestamps null: false
    end
  end
end
