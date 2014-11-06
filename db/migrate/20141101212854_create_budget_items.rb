class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.integer :budget_id
      t.integer :item_id
      t.integer :order

      t.timestamps
    end
  end
end
