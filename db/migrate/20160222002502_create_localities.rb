class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.text :description
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
