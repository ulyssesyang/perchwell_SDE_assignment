Rails.application.routes.draw do
  # API will expose the following four Restful endpoints as request
  resources :agents, only: [:index, :show]
  resources :properties, only: [:index, :show]
end
