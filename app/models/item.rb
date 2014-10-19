class Item < ActiveRecord::Base
  has_one :item_category
  has_many :item_color
end