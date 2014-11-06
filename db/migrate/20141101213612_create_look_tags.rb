class CreateLookTags < ActiveRecord::Migration
  def change
    create_table :look_tags do |t|
      t.integer :look_id
      t.integer :tag_id
      t.integer :author_id

      t.timestamps
    end
  end
end
