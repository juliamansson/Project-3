class AddColumnToFlavours < ActiveRecord::Migration
  def change
    add_column :flavours, :section_id, :integer
  end
end
