class Property < ApplicationRecord
    # define relatinship with agents
    belongs_to :agent_1, class_name: "Agent", foreign_key: "agent_1_email"
    belongs_to :agent_2, class_name: "Agent", foreign_key: "agent_2_email"
end
