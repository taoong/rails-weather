require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    @w = JSON.parse WeatherService.get(params[:city])
  end

end
