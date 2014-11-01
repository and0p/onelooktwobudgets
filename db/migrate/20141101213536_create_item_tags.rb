class CreateItemTags < ActiveRecord::Migration
  def change
    create_table :item_tags do |t|
      t.int :item_id
      t.int :tag_id
      t.int :author_id

      t.timestamps
    end
  end
end
