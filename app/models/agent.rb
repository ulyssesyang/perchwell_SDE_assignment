class Agent < ApplicationRecord
    # define relatinship with properties
    has_many :properties, :class_name => "Property", :foreign_key => "agent_email"
end
