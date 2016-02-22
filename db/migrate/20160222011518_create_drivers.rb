class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.date :datebirthday
      t.string :document
      t.string :license
      t.integer :yearexperience
      t.integer :phone
      t.references :state, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
