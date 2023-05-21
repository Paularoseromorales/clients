class CarsController < ApplicationController
  before_action :set_client, only: %i[new create]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.client = @client
    if @car.save
      redirect_to client_path(@client)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to client_path(@car.client), status: :see_other
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def car_params
    params.require(:car).permit(:brand, :model)
  end
end
