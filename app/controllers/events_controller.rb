class EventsController < ApplicationController

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

  def event_params
    params.require(:event).permit(:client_id, :event_name, :envent_description, :event_image, :slug, :start_date, :publication_date, :publication_state, :tickets_avaible, :ticket_price)
  end

end
