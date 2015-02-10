class AddAttributesToCupcakeSections < ActiveRecord::Migration
  def change
    add_column :cupcake_sections, :base, :string
    add_column :cupcake_sections, :topping, :string
    add_column :cupcake_sections, :frosting, :string
  end
end
