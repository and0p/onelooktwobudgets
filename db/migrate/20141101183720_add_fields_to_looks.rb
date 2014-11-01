class AddFieldsToLooks < ActiveRecord::Migration
  def change
    add_column :looks, :description, :text
    add_column :looks, :original, :boolean
  end
end
