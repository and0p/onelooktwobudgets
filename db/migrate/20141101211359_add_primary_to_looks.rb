class AddPrimaryToLooks < ActiveRecord::Migration
  def change
    add_column :looks, :primary_id, :int
  end
end
