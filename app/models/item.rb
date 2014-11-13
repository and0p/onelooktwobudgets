class Item < ActiveRecord::Base
  validates :sku, presence: true
  validates :name, presence: true
  validates :msrp, presence: true
  validates :primary_color_id, presence: true
  validates :item_category_id, presence: true


  belongs_to :item_category
  belongs_to :primary_color, :class_name => 'ItemColor', :foreign_key => 'primary_color_id'
  belongs_to :secondary_color, :class_name => 'ItemColor', :foreign_key => 'secondary_color_id'
  has_many :budget_items
  has_many :budgets, through: :budget_items, :class_name => 'Budget'
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
end