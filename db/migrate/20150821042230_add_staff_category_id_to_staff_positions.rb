class AddStaffCategoryIdToStaffPositions < ActiveRecord::Migration
  def change
    add_reference :staff_positions, :staff_category, index: true, foreign_key: true
  end
end
