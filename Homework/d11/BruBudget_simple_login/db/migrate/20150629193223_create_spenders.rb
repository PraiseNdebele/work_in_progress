class CreateSpenders < ActiveRecord::Migration
  def change
    create_table :spenders do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
