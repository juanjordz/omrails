class CreateConceptos < ActiveRecord::Migration
  def change
    create_table :conceptos do |t|
      t.integer :clave_facturas
      t.integer :cantidad
      t.string :producto
      t.string :unidad
      t.integer :precio_unitario
      t.integer :importe
      t.integer :impuesto
      t.integer :total

      t.timestamps
    end
  end
end
