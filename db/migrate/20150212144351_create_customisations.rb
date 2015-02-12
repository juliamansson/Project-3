class CreateCustomisations < ActiveRecord::Migration
  def change
    create_table :customisations do |t|
      t.references :section, index: true
      t.references :order, index: true
      t.references :flavour, index: true

      t.timestamps
    end
  end
end
