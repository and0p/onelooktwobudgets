class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :author_id
      t.integer :look_id
      t.text :description
      t.integer :popularity

      t.timestamps
    end
  end
end
