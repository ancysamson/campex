class CreatePapersStaffs < ActiveRecord::Migration
  def change
    create_table :papers_staffs, id: false do |t|
      t.belongs_to :paper, index: true, foreign_key: true
      t.belongs_to :staff, index: true, foreign_key: true
    end
  end
end
