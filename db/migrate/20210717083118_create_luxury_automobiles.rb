class CreateLuxuryAutomobiles < ActiveRecord::Migration[6.1]
  def change
    create_table :luxury_automobiles do |t|

      t.boolean :leather_seats
      t.integer :num_screens
      t.string :custom_monogram

    end
  end
end
