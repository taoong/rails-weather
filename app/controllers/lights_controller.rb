class LightsController < ApplicationController
  def get
    
  end
  
  def set
    @client ||= ApiClient.new
  end
end
