class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :destroy]

  def index
  	@cars = Car.order('state')
  end

  def show
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
      if @car.save
        redirect_to @car, notice: "Car was successfully created."
      else
        render :new
      end
  end

  def update
      if @car.update(car_params)
        redirect_to @car, notice: "Car was successfully updated."
      else
        render :new
      end
  end

  def destroy
  	@car.destroy
  		redirect_to cars_url, notice: "Car was successfully destroyed."
  end

  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:production_year, :state, :car_paint, :plate, :type_id)
    end
end
