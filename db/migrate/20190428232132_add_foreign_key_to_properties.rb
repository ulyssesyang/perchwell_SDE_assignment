class AddForeignKeyToProperties < ActiveRecord::Migration[5.2]
  def change
    # add agent_1 and agent_2 as foreign key to reference agent
    add_foreign_key :properties, :agents, column: :agent_1,  primary_key: :agent_email
    add_foreign_key :properties, :agents, column: :agent_2,  primary_key: :agent_email
  end
end
