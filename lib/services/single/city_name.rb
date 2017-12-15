require 'httparty'
require 'json'

class SingleCityName
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityname(cityname)
    @single_weather_cityname = JSON.parse(self.class.get("q=#{cityname}#{@key}").body)
  end
end

x = SingleCityName.new

# p x.get_weather_cityname("London")
