class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all

    render json: @tickets, status: :ok
  end

  def create
    @ticket = Ticket.new(ticket_params)

    @ticket.save
    render json: @ticket, status: :created
  end

  def destroy
    @ticket = Ticket.where(id: params[:id]).first
    if @ticket.destroy
      head(:Ok)
    else
      head(:Error)
    end
  end

  def ticket_params
    params.require(:ticket).permit(:event_id, :client_name, :client_mail, :confirmation_code)
  end

end
