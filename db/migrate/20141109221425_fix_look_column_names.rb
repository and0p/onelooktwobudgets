class FixLookColumnNames < ActiveRecord::Migration
  def self.up
      rename_column :looks, :primary_id, :best_original_budget_id
      add_column :looks, :best_cheap_budget_id, :int
  end

  def self.down
      rename_column :looks, :best_original_budget_id, :primary_id
      remove_column :looks, :best_cheap_budget_id
  end
end
