class ItemColor < ActiveRecord::Base
  has_many :items, :foreign_key => 'primary_color_id'
  has_many :items, :foreign_key => 'secondary_color_id'
end
