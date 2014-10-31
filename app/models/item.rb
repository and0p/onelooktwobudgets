class Item < ActiveRecord::Base
  has_one :item_category
  has_one :primary_color, :class_name => 'item_color', :foreign_key => 'primary_color_id'
  has_one :secondary_color, :class_name => 'item color', :foreign_key => 'secondary_color_id'
end