class CitiesController < ApplicationController

  def view
    render 'view'
  end
  
  def new
    render 'new'
  end
  
  def create
  end
  
  def update
    render 'update'
  end

end