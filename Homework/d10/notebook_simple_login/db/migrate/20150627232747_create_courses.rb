class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.string :time
      t.text :additional

      t.timestamps null: false
    end
  end
end
