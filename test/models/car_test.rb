require 'test_helper'

class CarTest < ActiveSupport::TestCase

  def car_params
  {state: "free", car_paint: "black", plate: 12345, production_year: 1997, type_id: 2}
  end

  test "Car got to have a state" do
    car = Car.new(car_params.merge(state: nil))
    assert_not car.save, "Saved a car with field \"state\" set to nil"
  end

  test "Car got to have a color" do
    car = Car.new(car_params.merge(car_paint: nil))
    assert_not car.save, "Saved a car with field \"car paint\" set to nil"
  end

  test "Car got to have a license_plate number" do
    car = Car.new(car_params.merge(plate: nil))
    assert_not car.save, "Saved a car with field \"plate\" set to nil"
  end

  test "Car got to have a production year" do
    car = Car.new(car_params.merge(production_year: nil))
    assert_not car.save, "Saved a car with field \"production_year\" set to nil"
  end

  test "Car got to have a type_id" do
    car = Car.new(car_params.merge(type_id: nil))
    assert_not car.save, "Saved a car with field \"type_id\" set to nil"
  end

  test "Car got to have a unique license_plate number" do
    car = Car.new(car_params)
    car.save
    duplicate_car = Car.new(car_params)
    assert_not duplicate_car.save, "Saved a car with a non-unique field \"plate\""
  end

end
