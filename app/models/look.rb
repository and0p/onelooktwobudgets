class Look < ActiveRecord::Base
  has_many :budgets
  has_many :tags, through: :look_tags
  belongs_to :primary_budget, :class_name => 'Budget', :foreign_key => 'primary_id'
end