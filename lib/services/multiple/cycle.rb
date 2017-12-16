require 'httparty'
require 'json'

class MultipleCityCycle
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/find?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_citycycle(cyclelat, cyclelon, cycleno)
    @single_weather_citycycle = JSON.parse(self.class.get("lat=#{cyclelat}&lon=#{cyclelon}&cnt=#{cycleno}#{@key}").body)
  end
end

x = MultipleCityCycle.new

p x.get_weather_citycycle(55.5, 37.5, 10)
