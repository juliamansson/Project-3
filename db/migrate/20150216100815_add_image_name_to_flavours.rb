class AddImageNameToFlavours < ActiveRecord::Migration
  def change
    add_column :flavours, :image_name, :string
  end
end
