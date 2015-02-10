class AddAttributesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :base, :string
    add_column :orders, :frosting, :string
    add_column :orders, :topping, :string
  end
end
