class AddIndexToAgents < ActiveRecord::Migration[5.2]
  def change
    # agent email should be index and unique
    add_index :agents, :email, unique: true
  end
end
