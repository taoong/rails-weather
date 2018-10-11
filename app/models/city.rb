class City
	attr_accessor :name, :landmark, :population, :weather, :temperature
	$cities = {}
	
	def initialize(city_params)
		@name = city_params[:name]
		@landmark = city_params[:landmark]
		@population = city_params[:population]
		@weather = WeatherService.get(@name)
    @temperature = ((9 / 5) * (@weather[:temperature] - 273) + 32).round
	end

	def save
		$cities[@name.to_sym] = self
	end

	def self.all
    $cities
  end

	def update(update_params)
		if update_params[:landmark]
      @landmark = update_params[:landmark]
    end
    if update_params[:population]
      @population = update_params[:population]
    end
	end
end