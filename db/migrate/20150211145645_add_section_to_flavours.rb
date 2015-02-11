class AddSectionToFlavours < ActiveRecord::Migration
  def change
    add_column :flavours, :section, :string
  end
end
