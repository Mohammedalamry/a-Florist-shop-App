class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :img
      t.integer :stack

      t.timestamps
    end
  end
end
