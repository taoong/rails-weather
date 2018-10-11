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
    if params and not City.all.key?(params[:name].to_sym)
      city = City.new(params)
      city.save
    end
    redirect_to '/cities/view'
  end
  
  def update
    render 'update'
  end
  
  def updateCity
    
    redirect_to '/cities/view'
  end

end