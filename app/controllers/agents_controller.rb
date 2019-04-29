class AgentsController < ApplicationController
    # GET /agents
    def index
        # apply condtion for filtering out id, created_at, updated_at, etc attributes
        @agents = Agent.all.as_json(:except => [:id, :created_at, :updated_at])
        json_response(@agents)
    end

    # GET /agents/:id
    def show
        # apply condtion for filtering out id, created_at, updated_at, etc attributes
        @agent = Agent.find(params[:id]).as_json(:except => [:id, :created_at, :updated_at])
        json_response(@agent)
    end
end
