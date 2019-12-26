class AddAmountToCreatJoinTableProductOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders_products, :amount, :integer
  end
end
