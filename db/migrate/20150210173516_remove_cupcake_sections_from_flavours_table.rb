class RemoveCupcakeSectionsFromFlavoursTable < ActiveRecord::Migration
  def change
    remove_column :flavours, :cupcake_section_id
  end
end
