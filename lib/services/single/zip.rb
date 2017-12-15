require 'httparty'
require 'json'

class SingleCityZip
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityzip(zip, countrycode)
    @single_weather_cityzip = JSON.parse(self.class.get("zip=#{zip},#{countrycode}#{@key}").body)
  end
end

x = SingleCityZip.new

 p x.get_weather_cityzip("sl6", "gb")
