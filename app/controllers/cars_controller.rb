class CarsController < ApplicationController
  befor_action :set_car, only [:show, :destroy]

  def index
  	@cars = Car.order('state')
  end

  def show
  end

  def edit
  end

  def destroy
  	@car.destroy
  		redirect_to root_url, notice: 'Samochód został usunięty'
  end

  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(car).permit(:production_year, :state, :car_paint, :plate, :type_id)
    end
end