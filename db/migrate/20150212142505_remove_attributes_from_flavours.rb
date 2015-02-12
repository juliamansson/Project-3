class RemoveAttributesFromFlavours < ActiveRecord::Migration
  def change
    remove_column :flavours, :section

  end
end
