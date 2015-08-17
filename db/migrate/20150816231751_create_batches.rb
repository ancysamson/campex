class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.string :code
      t.date :start_date
      t.date :end_date
      t.boolean :active
      t.belongs_to :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
