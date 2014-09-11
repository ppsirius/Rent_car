class RentsController < ApplicationController

  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      @rent.update(active: true)
      @rent.car.rent
      redirect_to :root
    else
      render 'new'
    end
  end
  
private
    

    def rent_params
      params.require(:rent).permit(:client_id, :car_id, :active)
    end
  
end
