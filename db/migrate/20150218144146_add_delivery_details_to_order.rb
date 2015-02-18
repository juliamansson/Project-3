class AddDeliveryDetailsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :name, :string
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :city, :string
    add_column :orders, :post_code, :string
  end
end
