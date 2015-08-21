class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :name
      t.string :code
      t.belongs_to :paper_type, index: true, foreign_key: true
      t.belongs_to :term, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
