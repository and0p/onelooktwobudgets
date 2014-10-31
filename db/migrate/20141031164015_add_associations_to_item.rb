class AddAssociationsToItem < ActiveRecord::Migration
  def change
    add_column :items, :item_category_id, :integer
    add_column :items, :primary_color_id, :integer
    add_column :items, :secondary_color_id, :integer, :default => nil
  end
end