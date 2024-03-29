class ClientsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @clients = Client.all

    render json: @clients, status: :ok
  end

  def create
    @client = Client.new(client_params)

    @client.save
    render json: @client, status: :created
  end

  def destroy
    @client = Client.where(id: params[:id]).first
    if @client.destroy
      head(:Ok)
    else
      head(:Error)
    end
  end

  def get_events_by_client_id
    @events = Event.all.where(client_id: params[:client_id])

    render json: @events.to_json(only: [:id, :event_name, :start_date ,:tickets_avaible, :ticket_price])
  end

  def create_event
    @event = Event.new(event_params)

    if @event.valid?
      @event.save
      actual_date = Time.now.to_date.to_s
      partial_slug = event_name_to_slug(@event.event_name)

      i = 1
      while Event.exists?(slug: actual_date + "-" + partial_slug) do
        aux = "-" + (i - 1).to_s
        if i > 0
          puts aux
          partial_slug.slice!(aux)
        end
        puts partial_slug
        partial_slug = partial_slug + "-" + i .to_s
        i += 1
      end

      @event.update(slug: actual_date + "-" + partial_slug)
      @event.update(publication_state: "created")

      render json: @event, status: :created
    else
      render json: "Event_Creation_Error", status: :bad_request
    end

  end

  def mark_as_published
    @event = Event.find_by(id: params[:event_id], client_id: params[:client_id])
    @event.update(publication_state: "published")
    @event.update(publication_date: Time.now.to_datetime)

    render json: @event, status: :ok
  end

  def event_name_to_slug(event_name)
    @name_array = event_name.split(/ /)
    final_slug = ""
    i = 0
    while i < @name_array.length do
      if i == @name_array.length - 1
        final_slug += @name_array[i].downcase
      else
        final_slug += @name_array[i].downcase + "-"
      end
      i += 1
    end
    final_slug
  end

  def client_params
    params.require(:client).permit(:name)
  end

  def event_params
    params.permit(:client_id, :event_name, :start_date, :event_description, :event_image, :tickets_avaible, :ticket_price)
  end
  
end
