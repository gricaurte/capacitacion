class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name, null: false, default: " "
      t.string :last_name, null: false, default: " "
      t.integer :gender, null: false
      t.string :card_id, null: false, default: " "
      t.integer :id_type, null: false, default: 1
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
