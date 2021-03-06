class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :edit, :destroy, :car_return, :car_clean, :car_service, :car_available]

  def index
    # params[:sort_by]

    @cars = Car.sort_by(params[:sort_by])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def edit
  end

  def car_return
    @car.return
    Rent.where(car_id: @car.id).last.update(active: false)
    redirect_to cars_path, notice: "returned"
  end

  def car_clean
    @car.clean
    redirect_to cars_path, notice: "cleaned"
  end

  def car_service
    @car.service
    redirect_to cars_path, notice: "service"
  end

  def car_available
    @car.available
    redirect_to cars_path, notice: "free to go"
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
        redirect_to cars_path, notice: "Car was successfully updated."
      else
        render :edit
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
