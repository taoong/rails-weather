class CitiesController < ApplicationController

  def view
    @cities = City.all.to_a
    if params[:city] and City.all.key?(params[:city].to_sym)
      @city = City.all[params[:city].to_sym]
    end
    render 'view'
  end
  
  def new
    render 'new'
  end
  
  def create
    if params
      city = City.new(params)
      city.save
      redirect_to '/cities/view'
    end
  end
  
  def update
    render 'update'
  end

end