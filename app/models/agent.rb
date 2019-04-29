class Agent < ApplicationRecord
    # define relatinship with properties
    has_and_belongs_to_many :properties
end
