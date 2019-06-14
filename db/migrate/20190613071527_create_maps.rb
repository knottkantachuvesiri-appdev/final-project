class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.float :land_weight
      t.float :water_weight

      t.timestamps
    end
  end
end
