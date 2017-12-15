require 'httparty'
require 'json'

class SingleCityID
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityid(cityid)
    @single_weather_cityid = JSON.parse(self.class.get("id=#{cityid}#{@key}").body)
  end
end

x = SingleCityID.new
puts x.get_weather_cityid(14256)
