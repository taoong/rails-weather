require 'net/http'

class WeatherService
  def get_weather(city)
    url = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["WEATHER"}")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    res.body
  end
end