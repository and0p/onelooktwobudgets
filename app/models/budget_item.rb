class BudgetItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :budget
end