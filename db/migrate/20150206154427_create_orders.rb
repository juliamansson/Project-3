class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :status
      t.float :price
      t.integer :quantity
      t.datetime :date

      t.timestamps
    end
  end
end
