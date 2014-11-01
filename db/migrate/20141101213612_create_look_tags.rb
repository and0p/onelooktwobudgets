class CreateLookTags < ActiveRecord::Migration
  def change
    create_table :look_tags do |t|
      t.int :look_id
      t.int :tag_id
      t.int :author_id

      t.timestamps
    end
  end
end
