class CreateCivs < ActiveRecord::Migration[5.1]
  def change
    create_table :civs do |t|
      t.string :name
      t.string :unique_unit
      t.string :unique_infrastructure
      t.text :description
      t.string :civ_ability

      t.timestamps
    end
  end
end
