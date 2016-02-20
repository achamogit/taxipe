class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.references :vehicle_brand, index: true, foreign_key: true
      t.references :vehicle_model, index: true, foreign_key: true
      t.string :placa
      t.integer :year
      t.integer :numberseat
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
