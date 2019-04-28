class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :unit_number
      t.integer :price
      t.string :status
      t.string :description
      t.integer :bathroom_count
      t.integer :bedroom_count
      t.string :property_type
      t.integer :square_feet
      t.integer :total_rooms
      t.string :agent_1
      t.string :agent_2

      t.timestamps
    end
  end
end
