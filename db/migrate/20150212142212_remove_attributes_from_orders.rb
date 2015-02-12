class RemoveAttributesFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :base
    remove_column :orders, :frosting
    remove_column :orders, :topping
  end
end
