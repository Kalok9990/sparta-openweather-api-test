require 'httparty'
require 'json'

class SingleCityCoord
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_citycoord(citylat, citylon)
    @single_weather_citycoord = JSON.parse(self.class.get("lat=#{citylat}&lon=#{citylon}#{@key}").body)
  end
end

x = SingleCityCoord.new

# p x.get_weather_citycoord(35, 139)
