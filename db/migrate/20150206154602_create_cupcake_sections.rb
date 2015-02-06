class CreateCupcakeSections < ActiveRecord::Migration
  def change
    create_table :cupcake_sections do |t|
      t.string :name

      t.timestamps
    end
  end
end
