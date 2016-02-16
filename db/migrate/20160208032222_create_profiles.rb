class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :name
      t.text :status

      t.timestamps null: false
    end
  end
end
