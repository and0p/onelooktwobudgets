class Budget < ActiveRecord::Base
  has_many :budget_items
  has_many :items, through: :budget_items
  belongs_to :look
end