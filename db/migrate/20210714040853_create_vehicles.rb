class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|

      t.timestamps
      t.belongs_to :user
      t.integer :num_wheels
      t.integer :num_doors
      t.string :color
      t.references :vehicleable, polymorphic: true
      
    end
  end
end
