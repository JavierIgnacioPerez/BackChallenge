Rails.application.routes.draw do
  resources :tickets
  resources :events
  resources :clients

  # Specific Routes for UH
  get '/clients/:client_id/events', to: 'clients#get_events_by_client_id'
  post '/client/:client_id/events', to: 'clients#create_event'
  post '/clients/:client_id/events/:event_id/publish', to: 'clients#mark_as_published'

end
