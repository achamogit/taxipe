class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :name
      t.text :description
      t.string :status

      t.timestamps null: false
    end
  end
end
