class HomeController < ApplicationController
  def index
    @cars = Car.all
    @clients = Client.all
  end
end
