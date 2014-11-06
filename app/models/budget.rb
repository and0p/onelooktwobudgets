class Budget < ActiveRecord::Base
  has_many :items, through: :budget_items
  belongs_to :look
end