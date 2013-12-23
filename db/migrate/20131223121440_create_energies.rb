class CreateEnergies < ActiveRecord::Migration
  def change
    create_table :energies do |t|
      t.string :name
      t.integer :level
      t.date :date
      t.string :memo

      t.timestamps
    end
  end
end
