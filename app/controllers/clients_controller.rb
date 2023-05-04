class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to client_path(@client)
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path, status: :see_other
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name)
  end
end
