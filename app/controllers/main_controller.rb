require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    # @w = JSON.parse WeatherService.get()
  end

end
