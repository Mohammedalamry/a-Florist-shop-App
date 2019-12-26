class AddStatusToCreatJoinTableProductOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders_products, :status, :integer
  end
end
