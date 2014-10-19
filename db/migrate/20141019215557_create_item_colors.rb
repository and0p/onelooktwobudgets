class CreateItemColors < ActiveRecord::Migration
  def change
    create_table :item_colors do |t|
      t.string :name

      t.timestamps
    end
    add_index :item_colors, :name, unique: true
  end
end
