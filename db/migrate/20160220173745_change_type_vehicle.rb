class ChangeTypeVehicle < ActiveRecord::Migration
  def change
     def up
       change_column :vehicles, :type, :string
     end

    def down
      change_column :vehicles, :type, :integer
    end
  end
end
