class Look < ActiveRecord::Base
  has_many :budgets
  belongs_to :primary_budget, :class_name => 'Budget', :foreign_key => 'primary_id'
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
end