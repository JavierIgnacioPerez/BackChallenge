class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :event_name, :start_date, :event_description, :event_image, :tickets_avaible, :ticket_price
end
