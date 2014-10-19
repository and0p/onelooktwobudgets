class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku
      t.string :name
      t.decimal :msrp
      t.decimal :price
      t.integer :color_hex
      t.boolean :sale

      t.timestamps
    end
  end
end
