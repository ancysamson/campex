class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :name
      t.string :code
      t.belongs_to :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
