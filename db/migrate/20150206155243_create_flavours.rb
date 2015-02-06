class CreateFlavours < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.integer :cupcake_section_id
      t.string :name

      t.timestamps
    end
  end
end
