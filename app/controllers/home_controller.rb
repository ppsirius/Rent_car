class HomeController < ApplicationController
  def index
    @cars = Car.all
  end
end
