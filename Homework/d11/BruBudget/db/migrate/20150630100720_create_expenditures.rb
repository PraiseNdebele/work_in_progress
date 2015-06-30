class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.string :item
      t.integer :price
      t.string :category
      t.references :spender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
