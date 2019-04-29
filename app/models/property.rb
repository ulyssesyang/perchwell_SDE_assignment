class Property < ApplicationRecord
    # define relatinship with agents
    has_and_belongs_to_many :agent
end
