class ChangeIndexOfAgents < ActiveRecord::Migration[5.2]
  def change
    # previously thought agent email should be unique. However, I found out in the sample data, some agents have the same email
    remove_index :agents, :email
    add_index :agents, :email
  end
end
