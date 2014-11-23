class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.text :descripcion
      t.attachment :foto

      t.timestamps
    end
  end
end
