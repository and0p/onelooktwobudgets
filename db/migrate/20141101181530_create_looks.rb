class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.string :name
      t.string :image_url
      t.integer :popularity
      t.integer :author_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
