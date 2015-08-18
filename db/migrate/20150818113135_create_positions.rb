class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end
