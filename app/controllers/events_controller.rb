class EventsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @events = Event.all

    render json: @events, status: :ok
  end

  def create
    @event = Event.new(event_params)

    @event.save
    render json: @event, status: :created
  end

  def destroy
    @event = Event.where(id: params[:id]).first
    if @event.destroy
      head(:Ok)
    else
      head(:Error)
    end
  end

  def get_event_by_id
    @event = Event.where(publication_state: "published")
    @requested_event = @event.find_by(id: params[:event_id])

    render json: @requested_event.to_json(only: [:event_name, :event_description, :start_date, :tickets_avaible, :ticket_price, :event_image])

  end

  def get_events
    @published_events = Event.where("publication_date < ?", Time.now.to_datetime + 7.days)

    render json: @published_events , status: :ok
  end

  def buy_ticket
    @partial_ticket = Ticket.new(buyer_params)
    @event = Event.find_by(id: @partial_ticket.event_id)

    if @event.publication_state == "published"
      @partial_ticket.update(confirmation_code: Random.rand(100000..999999).to_s)
      if @partial_ticket.valid?
        @partial_ticket.save
        @event.update(tickets_avaible: @event.tickets_avaible - 1)
        render json: @partial_ticket, status: :created
      else
        render plain: "Código duplicado", status:401
      end
    else
      render plain: "Evento no publicado", status:401
    end


  end

  def event_params
    params.require(:event).permit(:client_id, :event_name, :event_description, :event_image, :slug, :start_date, :publication_date, :publication_state, :tickets_avaible, :ticket_price)
  end

  def buyer_params
    params.permit(:event_id, :buyer_name, :buyer_mail)
  end

end
