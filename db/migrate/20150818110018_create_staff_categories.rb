class CreateStaffCategories < ActiveRecord::Migration
  def change
    create_table :staff_categories do |t|
      t.string :name
      t.string :code

      t.timestamps null: false
    end
  end
end
