class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :about
      t.text :location
      t.integer :rating

      t.timestamps null: false
    end
  end
end
