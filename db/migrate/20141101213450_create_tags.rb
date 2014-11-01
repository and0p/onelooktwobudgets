class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :author_id
      t.integer :uses

      t.timestamps
    end
  end
end
