class Tag < ActiveRecord::Base
  has_many :taggings, :dependent => :destroy
  has_many :items, :through => :taggings, :source => :taggable, :source_type => "Item"
  has_many :looks, :through => :taggings, :source => :taggable, :source_type => "Look"
end