class RemoveCategoryFromStaffPositions < ActiveRecord::Migration
  def change
  	remove_column :staff_positions, :category, :string
  end
end
