class CreateLeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :leaders do |t|
      t.string :name
      t.text :description
      t.string :leader_ability
      t.string :leader_unit
      t.string :leader_agenda

      t.timestamps
    end
  end
end
