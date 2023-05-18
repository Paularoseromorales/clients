class ClientsController < ApplicationController
  before_action :set_client, only: %I[show edit update destroy]
  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to client_path(@client), notice: 'The client was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to client_path(@client), notice: 'The client was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path, status: :see_other
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name)
  end
end
