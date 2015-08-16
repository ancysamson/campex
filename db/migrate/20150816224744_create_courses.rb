class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.belongs_to :course_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
