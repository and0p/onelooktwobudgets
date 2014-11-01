class AddOriginalToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :original, :boolean
  end
end
