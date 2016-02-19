class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
