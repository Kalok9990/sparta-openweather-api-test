require 'httparty'
require 'json'

class MultipleCityRectangleZone
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/city?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityrect(lonleft, latbottom, lonright, lattop, zoom)
    @single_weather_citycycle = JSON.parse(self.class.get("bbox=#{lonleft},#{latbottom},#{lonright},#{lattop},#{zoom}#{@key}").body)
  end
end

x = MultipleCityRectangleZone.new

# p x.get_weather_cityrect(12,32,15,37,10)
