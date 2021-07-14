class CreateAutomobiles < ActiveRecord::Migration[6.1]
  def change
    create_table :automobiles do |t|

      t.timestamps
      t.belongs_to :user
      t.integer :num_wheels
      t.integer :num_doors
      t.string :color
      t.references :autoable, polymorphic: true
      
    end
  end
end
