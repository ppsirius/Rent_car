class RentsController < ApplicationController

  def index
    sort_by = params[:sort_by]

    @rents = if sort_by
      if sort_by == 'name'
        Rent.by_name
      elsif sort_by == 'type'
        Rent.by_type
      else
        Rent.by_params(sort_by)
      end
    else
      Rent.includes(:client, :car => [:type])   #  eager loading
    end

    respond_to do |format|
      format.html
      format.js
    end
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
