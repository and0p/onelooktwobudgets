class Budget < ActiveRecord::Base
  has_many :items, through: :budget_items
end
