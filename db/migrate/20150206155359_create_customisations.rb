class CreateCustomisations < ActiveRecord::Migration
  def change
    create_table :customisations do |t|
      t.references :cupcake_section
      t.references :flavour
      t.references :order
      t.string :requests

      t.timestamps
    end
  end
end
