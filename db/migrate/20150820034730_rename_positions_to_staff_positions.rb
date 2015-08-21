class RenamePositionsToStaffPositions < ActiveRecord::Migration
  def change
  	rename_table :positions, :staff_positions
  end
end
