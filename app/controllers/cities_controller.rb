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
    @city = params
    # redirect to view
  end
  
  def update
    render 'update'
  end

end