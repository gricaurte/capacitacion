class CreateCreditos < ActiveRecord::Migration[5.1]
  def change
    create_table :creditos do |t|
      t.belongs_to :client, foreign_key: true, null: false, default: " "
      t.belongs_to :producto, foreign_key: true, null: false, default: " "
      t.integer :plazo, null: false, default: " "
      t.decimal :monto, null: false, default: "0.0"
      t.integer :periodicidad, null: false, default: "3"
      t.text :destino

      t.timestamps
    end
  end
end
