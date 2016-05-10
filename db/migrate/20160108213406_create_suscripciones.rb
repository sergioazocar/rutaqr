class CreateSuscripciones < ActiveRecord::Migration
  def change
    create_table :suscripciones do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.string :precio
      t.string :estado
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
