class Item < ActiveRecord::Base
  belongs_to :item_category
  belongs_to :primary_color, :class_name => 'ItemColor', :foreign_key => 'primary_color_id'
  belongs_to :secondary_color, :class_name => 'ItemColor', :foreign_key => 'secondary_color_id'
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
end