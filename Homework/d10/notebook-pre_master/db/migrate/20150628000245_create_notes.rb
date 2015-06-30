class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :creator
      t.text :body
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
