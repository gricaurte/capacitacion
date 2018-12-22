class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre, null: false, default: " "
      t.decimal :tasa, null: false, default: "0.0"
      t.integer :plazo, null: false, default: "1"
      t.integer :tipo, null: false, default: " "

      t.timestamps
    end
  end
end
