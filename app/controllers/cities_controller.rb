class CitiesController < ApplicationController

  def view
    @cities = City.all.to_a
    @w = WeatherService.get(params[:city])
    render 'view'
  end
  
  def new
    render 'new'
  end
  
  def create
    if params
      @temperature = (9 / 5) * (params[:temperature] - 273) + 32
      city = City.new(
          name: params[:name],
          landmark: params[:landmark],
          population: params[:population],
          weather: @temperature
        )
      city.save
      # redirect to view
    end
  end
  
  def update
    render 'update'
  end

end