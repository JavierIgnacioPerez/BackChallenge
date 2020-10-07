class ClientsController < ApplicationController

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

  def client_params
    params.require(:client).permit(:name)
  end
  
end
