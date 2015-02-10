class DropCupcakeSections < ActiveRecord::Migration
  def change
    drop_table :cupcake_sections
  end
end
