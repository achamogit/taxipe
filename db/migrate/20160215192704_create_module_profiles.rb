class CreateModuleProfiles < ActiveRecord::Migration
  def change
    create_table :module_profiles do |t|
      t.integer :idmodulo
      t.integer :idperfil

      t.timestamps null: false
    end
  end
end
