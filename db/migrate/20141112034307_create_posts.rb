class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :autor
      t.text :text

      t.references :item, index: true
      t.timestamps
    end
  end
end
