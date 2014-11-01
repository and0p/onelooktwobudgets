class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.int :budget_id
      t.int :item_id
      t.int :order

      t.timestamps
    end
  end
end
