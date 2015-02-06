class CreateCustomisations < ActiveRecord::Migration
  def change
    create_table :customisations do |t|
      t.integer :cupcake_section_id
      t.integer :flavour_id
      t.integer :order_id
      t.string :name

      t.timestamps
    end
  end
end
