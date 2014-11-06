class AddMsrpToBudget < ActiveRecord::Migration
  def change
    add_column :budgets, :msrp, :decimal, :precision => 8, :scale => 2
  end
end
