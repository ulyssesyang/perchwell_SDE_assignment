class PropertiesController < ApplicationController
    # GET /properties
    def index
        # for each property, apply condtion for filtering out id, created_at, updated_at, etc attributes
        @properties = Property.all.as_json(:except => [:id, :created_at, :updated_at]).each do |property|
            # attach Array of agents to each property based on email
            property['agents'] = Agent.where("email = ? OR email = ?", property['agent_1'], property['agent_2']).as_json(:except => [:id, :created_at, :updated_at])
            # remove unnecessary attributes
            property.delete("agent_1")
            property.delete("agent_2")
        end
        json_response(@properties)
    end

    # GET /properties/:id
    def show
        # apply condtion for filtering out id, created_at, updated_at, etc attributes
        @property = Property.find(params[:id]).as_json(:except => [:id, :created_at, :updated_at])
        # attach Array of agents to each property based on email
        @property['agents'] = Agent.where("email = ? OR email = ?", @property['agent_1'], @property['agent_2']).as_json(:except => [:id, :created_at, :updated_at])
        # remove unnecessary attributes
        @property.delete("agent_1")
        @property.delete("agent_2")
        json_response(@property)
    end
end
