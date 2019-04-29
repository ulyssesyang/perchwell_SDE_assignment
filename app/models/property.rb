class Property < ApplicationRecord
    # define relatinship with agents
    belongs_to :agent, class_name: "Agent", foreign_key: "agent_1"
    belongs_to :agent, class_name: "Agent", foreign_key: "agent_2"
end
