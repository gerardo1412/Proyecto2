class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
