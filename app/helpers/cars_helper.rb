module CarsHelper
  def car_state(car)
    if car.state == 'available'
      'available'
    end
  end
end
