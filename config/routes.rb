Rails.application.routes.draw do
  resources :tickets
  resources :events
  resources :clients

  # Specific Routes for UH
  get '/clients/:client_id/events', to: 'events#getEventsByClient'

end
