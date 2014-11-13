class Look < ActiveRecord::Base
  has_many :budgets
  belongs_to :best_original_budget, :class_name => 'Budget'
  belongs_to :best_cheap_budget, :class_name => 'Budget'
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
end