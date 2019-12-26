class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end
