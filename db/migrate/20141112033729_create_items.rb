class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.integer :usados
      t.attachment :foto

      t.timestamps
    end
  end
end
