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
    @w = WeatherService.get(params[:name])
    if @w
      @temperature = (9 / 5) * (@w[:temperature] - 273) + 32
      city = City.new(params)
      city.save
      redirect_to '/cities/view'
    end
  end
  
  def update
    render 'update'
  end

end